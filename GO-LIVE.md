# Going live with the redesign

The redesign is built on branch `redesign` (this worktree, `web-next`) and
previewed at https://mtex-playground.github.io. Going live means merging it
into `master` of `mtex-toolbox/mtex-toolbox.github.io`, which GitHub Pages
serves. The live site stays as it is until that push.

Checked on 1 Oct 2026: all 2,804 URLs of the live site exist in the redesign
(`support.html` and `scripts.html` as forwards), `redesign` merges into
`master` without conflicts, and the pages GitHub Pages would build are
identical to the preview build apart from the preview's noindex tag.

## 1. Before going live

These make statements on the site true. The site goes live after the pymtex
release, so most of them resolve themselves with it.

- [ ] **pymtex is on PyPI as `mtex` 1.0.0.** Until then these are false:
  - `pip install "mtex[all]"` and "MTEX for Python 1.0" in the install box of
    `index.html`, and "1.0.0 · Python 3.12+" in `pages/getstarted/getstarted.html`
  - the "edit page" link of all 238 Python pages and the "Source on GitHub"
    link of the Python install box on the homepage, which point into
    `mtex-toolbox/pymtex` and are a 404 while that repository is private
- [ ] **The Python pages are rebuilt from the released pymtex**
  (`pymtex/docs/site.py ../web-next`, about 3 minutes), so that their code
  matches what `pip` installs.
- [ ] **`docs-next` is merged into MTEX `develop`.** It carries the
  Start / Concepts / Tasks structure the published pages come from; until it is
  merged, the "edit page" link of the 12 new chapter pages (`FirstSteps`,
  `OrientationMaps`, `CrystalLattices`, …) leads to a 404. The merge is clean.
- [ ] **The announcement bar** (`_data/announcement.yml`) and the 2027 workshop
  page say what is current, with dates and registration if they are known.

## 2. Going live

Figures first, so that no published page points at a figure that is not there
yet.

- [ ] **Figures.** The redesign needs 1,370 figures the live figures
  repository does not have (`figures/hero`, `figures/gallery`,
  `figures/python`). Make the live checkout match the preview one and publish
  it:

  ```bash
  cd ~/mtex/web
  rsync -a --delete --exclude .git ../web-next/figures/ figures/
  git -C figures status --short | head      # expect the three new folders
  tools/deploy-figures.sh                   # force-pushes mtex-toolbox/figures
  ```

- [ ] **Merge and push.**

  ```bash
  cd ~/mtex/web                             # on master
  git pull
  git merge origin/redesign
  git push
  ```

  `update.sh` is for content updates and stages only build output, so it is
  not the tool for this merge.
- [ ] **Watch the Pages build** (about two minutes):
  `gh run list -R mtex-toolbox/mtex-toolbox.github.io --limit 3`
- [ ] **Look at the live site:** the homepage code card, `/docs`, a tutorial,
  a Python page (`EBSDTutorial_py.html`), a class page (`EBSD_index.html`),
  the gallery, and an old URL such as `support.html`.

## 3. After going live

Not blocking; most of it is content in the MTEX sources.

- [ ] **Workshop material.** The 2022 slides and scripts lived on the retired
  Chemnitz homepage (26 links in `workshop22.md`); 25 tuc.cloud shares of the
  2023 and 2024 workshops return 404, and 62 more could not be checked because
  tuc.cloud rate-limits scripted requests.
- [ ] **Dead links in generated pages.** 144 on 86 pages, all in pages
  generated from MTEX (renamed functions, malformed links in help texts,
  `matlab:` links). `tools/check-links.py <built site> --all` lists them with
  their source.
- [ ] **Missing images.** `images/geometry.svg` (GeometryOverview,
  TensorAnalysisOverview) and `images/S2Fun.svg` (SphericalFunctionsOverview,
  SO3FunctionsOverview) are in neither repository; a `geometry.svg` lies
  untracked in `web/images/icons/`. Four figures are missing from the last
  doc build: `ExSeismicPlots_01`, `ExperimentalPFs_01`, `_08`, `_10`.
- [ ] **Orphaned pages.** 19 generated pages have no source any more (the
  `trueEbsd2.*` methods, six `*Overview` pages, `halfQuadraticFilter`, …):
  `tools/find-orphan-pages.py`, then `--delete`.
- [ ] **`pages/workshops/notes.md`** is served on the live site today. The
  redesign excludes it from the build; delete it if it is not needed.
- [ ] **The Dependabot alert** on `rubyzip` (Gemfile.lock).
- [ ] **The 3D EBSD tab** of the homepage code card has no figures yet.
- [ ] **The older workshop pages** (2022–2026) and the search page still use
  the old page frame.
