#!/bin/sh
# Publish the site.
#
# This repository is the live site: master is what GitHub Pages serves, so
# anything committed here is public as soon as it is pushed. The old version
# of this script was
#
#     git add .
#     git status
#     git commit -m "content update"
#     git push
#
# which swept in whatever else happened to be in the tree. That is not
# hypothetical - at the time of writing a plain `git add .` here would have
# picked up 32 untracked files and 5 modified ones that had nothing to do with
# any content update.
#
# So: stage only what a build writes, show what is about to go out, and ask.
# Use --all if you really do want everything, and --dry-run to look first.

set -eu

# Never leave the index staged behind us: this script stages before it decides,
# and an early exit used to strand 33 files in the index.
staged=0
cleanup() { [ "$staged" -eq 1 ] && git reset -q || true; }
trap cleanup EXIT

BUILD_PATHS='pages images _data/sidebars search.json'

all=0
dry=0
for arg in "$@"; do
  case "$arg" in
    --all)     all=1 ;;
    --dry-run) dry=1 ;;
    -h|--help)
      sed -n '2,22p' "$0" | sed 's/^# \{0,1\}//'
      exit 0 ;;
    *) echo "unknown option: $arg" >&2; exit 2 ;;
  esac
done

cd "$(dirname "$0")"

if [ "$all" -eq 1 ]; then
  git add -A
else
  # shellcheck disable=SC2086
  git add -- $BUILD_PATHS
fi
staged=1

if git diff --cached --quiet; then
  echo "nothing staged - the build wrote nothing, or it wrote outside"
  echo "$BUILD_PATHS"
  exit 0
fi

echo
echo "about to publish:"
git diff --cached --stat | tail -25
echo

held=$(git status --porcelain | grep -v '^[MARCD]' | wc -l | tr -d ' ')
if [ "$all" -eq 0 ] && [ "$held" -gt 0 ]; then
  echo "leaving $held file(s) out of this commit, not written by the build:"
  git status --porcelain | grep -v '^[MARCD]' | head -10 | sed 's/^/    /'
  echo "  (use --all to include them)"
  echo
fi

# The checker lives in the toolbox repository; run it when it is beside us.
# It resolves paths from the toolbox root, so run it from there and point it
# back at the pages here.
checker=../master/doc/tools/check_doc_structure.py
if [ -f "$checker" ]; then
  echo "checking documentation structure ..."
  if ! (cd ../master && python3 doc/tools/check_doc_structure.py \
          --published ../web/pages); then
    echo
    echo "the structure check failed - fix it, or publish with --all if you"
    echo "have decided to accept it" >&2
    exit 1
  fi
  echo
fi

if [ "$dry" -eq 1 ]; then
  echo "dry run, nothing committed"
  exit 0
fi

printf 'publish these to the live site? [y/N] '
read -r reply
case "$reply" in
  y|Y|yes) ;;
  *) echo "stopped, nothing committed"; exit 1 ;;
esac

staged=0
git commit -m "content update"
git push
