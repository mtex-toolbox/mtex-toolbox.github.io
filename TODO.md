# Open points of the site

Most of it is content in the MTEX sources.

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
  in `~/mtex/web-untracked-2026-10-13/images/icons/`. Four figures are missing
  from the last doc build: `ExSeismicPlots_01`, `ExperimentalPFs_01`, `_08`, `_10`.
- [ ] **Orphaned pages.** 19 generated pages have no source any more (the
  `trueEbsd2.*` methods, six `*Overview` pages, `halfQuadraticFilter`, …):
  `tools/find-orphan-pages.py`, then `--delete`.
- [ ] **`pages/workshops/notes.md`** is excluded from the build; delete it if
  it is not needed.
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
