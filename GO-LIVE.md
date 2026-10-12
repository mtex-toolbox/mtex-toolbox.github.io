# Going live with the redesign

The redesign is built on branch `redesign` (this worktree, `web-next`) and
previewed at https://mtex-playground.github.io. Going live means pushing it
to `master` of `mtex-toolbox/mtex-toolbox.github.io`, which GitHub Pages
serves. The live site stays as it is until that push.

Checked on 1 Oct 2026: all 2,804 URLs of the live site exist in the redesign
(`support.html` and `scripts.html` as forwards), and the pages GitHub Pages
would build are identical to the preview build apart from the preview's
noindex tag. `redesign` contains `master`, so going live is a fast-forward.

## 1. Preparation

pymtex 1.0, MTEX 7.2 and the new site are released together. Everything in
this section can be done ahead of that day, in this order.

**MTEX (`mtex-next`, branch `docs-next`)**

- [x] **Make the core tests pass.** 59 of 59 on `develop` `bc27563ac`. The
  slow tier still fails `check_SO3VectorFieldApprox` (interpolate 0.0213
  against 0.02), `check_gridify` (index error) and `check_ebsdImportH5`
  (scan 3: 13 notIndexed pixels, expected 113995); the last two fail on
  `develop` before the merge as well.
- [x] **Merge `docs-next` into `develop`.** The merge is clean; it carries the
  Start / Concepts / Tasks structure, `'ipfDirection'`, the ASTAR and
  Thermo Fisher import fixes and the vendor page.
- [x] **Write the 7.2 changelogs** (`doc/GeneralConcepts/changelog.m`,
  `CHANGELOG.md`). Add what `develop` gains from here on.

**pymtex**

- [ ] **Finish the pages.** 224 of 235 are checked, 6 are adapted prose pages
  (`docs/plans/remaining-pages.md`). Open: EBSDFilling, EBSDIPFMap, EBSDKAM,
  BoundaryCurvature, BoundaryNormalDistribution.
- [x] **`CHANGELOG.md` for 1.0.0.** `pyproject.toml` already says 1.0.0.

**Site (`web-next`, branch `redesign`)**

- [ ] **Commit the working tree.** About 60 files are modified (hero, gallery,
  regenerated MATLAB and Python pages). The go-live merge takes only what is
  committed on `redesign`, while the preview shows everything.
- [ ] **Rebuild the MATLAB documentation from `develop`** after the merge
  above: `makeDoc` in `web-next/matlab` with MATLAB started in `mtex-next`
  (hours; confirm the plan with `Y`). Check `git -C figures status` for
  deleted figures, then commit the pages and the sidebars.
- [ ] **Prepare the version bump to 7.2.0** as one commit:
  - a new first entry in `_data/releases.yml` (version, date, notes). The
    homepage install box and the download page read it.
  - the zip link and version in `pages/getstarted/getstarted.html` and
    `pages/getstarted/getstarted-matlab.md`.
  These links are 404s on the preview until the release exists.
- [ ] **Make the announcement bar** (`_data/announcement.yml`) **and the 2027
  workshop page current**, with dates and registration if known.
- [ ] **Review the preview once more**:
  `NEXT_OUT=../web-next-full tools/deploy-next.sh --full`, then
  `tools/check-links.py ../web-next-full`.

## 2. Release day

In this order: each step makes the next one's links true.

- [ ] **MTEX 7.2.** Run `makeRelease` in `develop`. It tags, builds the zip and
  creates a draft release, and CI attaches the mex binaries. Then publish the
  release and check that
  `https://github.com/mtex-toolbox/mtex/releases/download/mtex-7.2.0/mtex-7.2.0.zip`
  downloads.
- [ ] **pymtex 1.0.** Make `mtex-toolbox/pymtex` public, then push the tag
  `v1.0.0`. `.github/workflows/release.yml` publishes to PyPI. Check
  `pip install "mtex[all]"` in a fresh Python 3.12 venv.
- [ ] **Python pages from the released pymtex.** Run
  `pymtex/docs/site.py ../web-next` at the tag (about 3 minutes), then commit.
- [ ] **Figures.** The redesign needs 1,370 figures the live figures
  repository does not have (`figures/hero`, `figures/gallery`,
  `figures/python`), plus whatever the rebuild changed:

  ```bash
  cd ~/mtex/web
  rsync -a --delete --exclude .git ../web-next/figures/ figures/
  git -C figures status --short | head
  tools/deploy-figures.sh                   # force-pushes mtex-toolbox/figures
  ```

- [ ] **Push the site.**

  ```bash
  cd ~/mtex/web-next                        # on redesign
  git fetch origin
  git merge origin/master                   # "Already up to date" unless master moved
  git push origin redesign redesign:master
  ```

  The push is a fast-forward of `master` and needs no clean `~/mtex/web`.
  `update.sh` is for content updates and stages only build output, so it is
  not the tool for this step.
- [ ] **Watch the Pages build** (about two minutes):
  `gh run list -R mtex-toolbox/mtex-toolbox.github.io --limit 3`
- [ ] **Look at the live site:**
  - the homepage install box (both languages) and the code card
  - `/docs`, a tutorial, and a Python page (`EBSDTutorial_py.html`)
  - a class page (`EBSD_index.html`), the vendor page (`EBSDVendors.html`) and
    the gallery
  - an old URL such as `support.html`

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
- [ ] **Thermo Fisher alignment.** The half turn about y that MTEX applies
  follows the xTalView manual's figure. Confirm it on a real map with a
  feature of known direction.
- [ ] **Sidebar titles.** `doc/Chapters/ImportExport.toc` names six pages
  "Import" and six "Export"; the sidebar shows them without telling them apart.
- [ ] **"Functions used on this page"** on the doc pages: needs makeDoc to
  record the calls with MATLAB's profiler.
