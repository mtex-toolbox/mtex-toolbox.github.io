#!/bin/sh
# Publish figures/, the checkout of mtex-toolbox/figures, as one fresh commit.
#
# That repository is a GitHub Pages project site, served at /figures/ next to
# the pages of this one. It keeps a single commit: every deploy replaces it and
# force-pushes, so the repository holds one copy of the figures and does not
# grow with each rebuild. The image diff that makeDoc and
# tools/revert-unchanged-images.py rely on only ever compares against that one
# commit, the figures as they were last published.
#
#     tools/deploy-figures.sh             publish if anything changed
#     tools/deploy-figures.sh --dry-run   only show what would go out

set -eu

dry=0
case "${1:-}" in
  --dry-run) dry=1 ;;
  "") ;;
  *) echo "unknown option: $1" >&2; exit 2 ;;
esac

cd "$(dirname "$0")/../figures"

if [ -z "$(git status --porcelain)" ]; then
  echo "figures: nothing changed"
  exit 0
fi

echo "figures: $(git status --porcelain | wc -l | tr -d ' ') file(s) changed"
git status --porcelain | head -10 | sed 's/^/    /'

if [ "$dry" -eq 1 ]; then
  echo "dry run, nothing published"
  exit 0
fi

# an orphan branch starts from the current index, so `add -A` makes the new
# commit exactly the working tree, deletions included
git checkout -q --orphan next
git add -A
git commit -q -m "MTEX documentation figures, $(date +%F)"
git branch -M next main
git push -q --force origin main

# drop the replaced commit locally as well, so the checkout stays one copy
git reflog expire --expire=now --all
git gc -q --prune=now
echo "figures: published"
