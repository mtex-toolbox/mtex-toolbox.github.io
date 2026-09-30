#!/bin/sh
# Build the preview site and publish it to mtex-playground.github.io.
#
# The preview is built here rather than by GitHub Pages, because it needs
# _config_next.yml on top of _config.yml and Pages reads only the latter. The
# built site goes out as one fresh commit, force-pushed, like the figures: the
# preview repository holds the current preview and no history.
#
# The figures go out first through tools/deploy-figures.sh. In this checkout
# figures/ pushes to mtex-playground/figures, never to mtex-toolbox/figures.
#
#     tools/deploy-next.sh             build and publish
#     tools/deploy-next.sh --dry-run   build only, and show where it would go

set -eu

dry=0
case "${1:-}" in
  --dry-run) dry=1 ;;
  "") ;;
  *) echo "unknown option: $1" >&2; exit 2 ;;
esac

cd "$(dirname "$0")/.."
site=$(pwd)
remote=git@github.com:mtex-playground/mtex-playground.github.io.git
out=${NEXT_OUT:-$site/../web-next-site}

case "$(git -C figures remote get-url origin)" in
  *mtex-playground/*) ;;
  *) echo "figures/ does not push to mtex-playground - refusing" >&2; exit 1 ;;
esac

bundle exec jekyll build --config _config.yml,_config_next.yml -d "$out"
touch "$out/.nojekyll"
echo "built $(find "$out" -name '*.html' | wc -l | tr -d ' ') pages into $out"

if [ "$dry" -eq 1 ]; then
  echo "dry run: would publish figures, then push $out to $remote"
  exit 0
fi

tools/deploy-figures.sh

cd "$out"
rm -rf .git
git init -q -b main
git add -A
git commit -q -m "Preview of $(git -C "$site" rev-parse --short HEAD) ($(git -C "$site" branch --show-current))"
git push -q --force "$remote" main
rm -rf .git
echo "published to https://mtex-playground.github.io"
