# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

The MTEX homepage and documentation website (`git@github.com:mtex-toolbox/mtex-toolbox.github.io`)
— a Jekyll site served by GitHub Pages from `master`. It is built on the
[Documentation Theme for Jekyll](https://idratherbewriting.com/documentation-theme-jekyll/index.html)
(see `README`); most of `_layouts/`, `_includes/`, `css/` and `js/` is stock theme code.

The bulk of the content is **not** written here: the documentation, function
reference and examples pages are generated from MTEX's own `.m` sources by
MATLAB and checked in.

## Local development

```bash
bundle install
bundle exec jekyll serve      # http://127.0.0.1:4000 (host/port come from _config.yml)
docker-compose up             # same thing containerised (jekyll/jekyll image)
```

There is no test suite, no linter and no CI build step — GitHub Pages runs
Jekyll on push. The nearest thing to a test is the image diff of a doc rebuild
(see below).

`_site/` is the local build output and is gitignored (it was tracked until
Jul 2026, as a stale Oct-2024 build). GitHub Pages builds from source and
Jekyll never publishes its own destination directory, so nothing there needs
committing. `_config.yml` also excludes `matlab/` from the build, so the doc
toolchain sits in the repo without being published; `matlab/publish_log.txt`
(the build log) is gitignored too.

`./update.sh` is the deploy: `git add . && git commit -m "content update" &&
git push` to `master`, which is what GitHub Pages serves. It commits
*everything* in the tree, so review `git status` first — especially after a doc
rebuild.

## Generated vs. hand-written content

Generated — never hand-edit, changes belong in the MTEX `.m` sources:

- `pages/documentation_matlab/` — from `../master/doc/`
- `pages/function_reference_matlab/` — from the help comments of MTEX's own
  classes/functions (`S1Fun`, `S2Fun`, `SO3Fun`, `EBSDAnalysis`, `ODFAnalysis`,
  `PoleFigureAnalysis`, `TensorAnalysis`, `plotting`, `geometry`, `interfaces`,
  `tools`) plus `../master/doc/FunctionReference/`; the list is the
  `mtexFunctionFiles` array in `makeDoc.m`, so a new top-level MTEX folder has
  to be added there before it shows up. Methods without a help comment of
  their own are dropped (`dropUndocumentedMethods`): MATLAB would otherwise
  substitute the documentation of the built-in of the same name, and
  `S1FunHandle.numel` would get a page describing MATLAB's `numel`
- `pages/examples_matlab/` — from `../examples/`
- `images/*_NN.png` — figures rendered by MATLAB `publish` during the doc build,
  one numbered file per figure per page (`GND_04.png`, `EBSD.plot_02.png`)
- `_data/sidebars/documentation_sidebar.yml`, `function_reference_sidebar.yml`,
  `examples_sidebar.yml` — written by `matlab/xml2yml.m` from the `.xml` TOCs

Hand-written: `index.md`, `pages/{addons,download,people,publications,support,videos,workshops,scripts,search,examples,function_reference}/`,
`_data/topnav.yml`, `_data/sidebars/workshops_sidebar.yml`, `_posts/`,
`css/theme-mtex.css`, `_includes/custom/`.

`images/` is **not** generated wholesale — only the numbered `<Page>_NN.png`
figures are. Its subdirectories (`icons/`, `profiles/`, `thumbnails/`,
`favicons/`, `workshop24/`, `workshop26/`) and any loose asset without the
`_NN` suffix (sponsor logos, `nfft_logo.png`, the theme's `arrow_*.gif` used by
the generated `docscripts.js`, …) are hand-maintained site assets that nothing
regenerates. `revert-unchanged-images.py` only restores *modified* PNGs, so a
deletion in `images/` is never undone by a rebuild — check `git status` for
`D images/…` lines before committing after a doc build.

## Running MATLAB

Use `/opt/matlab-2024b/bin/matlab`, not the `matlab` on `$PATH` (that resolves
to a newer MATLAB R2025b install which segfaults in headless/`-batch` mode on
this machine — a licensing-library crash unrelated to MTEX):

```bash
/opt/matlab-2024b/bin/matlab -batch "your_command_here"
```

`-batch` runs headlessly and exits when the command finishes; startup (path
setup + MTEX init) costs ~10-20 s, and much more if an interactive MATLAB
desktop session is already contending for the license. Run it from
`../master/` so MATLAB picks up that folder's `startup.m` (which calls
`startup_mtex`), or `addpath` and call `startup_mtex` yourself.

For several calls back-to-back, `../master/docs/agents/matlab-bridge/` keeps a
warm headless session (Python MATLAB Engine API) that pays startup once —
`setup.sh` once, then `start_session.sh`, `matlab_run.py "cmd"`,
`stop_session.sh`. See `../master/CLAUDE.md` for its caveats.

## Rebuilding the documentation (MATLAB)

Run from `matlab/` **inside MATLAB**, with MTEX on the path. The three pieces
live side by side:

- `../master/` — the MTEX checkout (`mtex_path`); its `doc/` holds the
  documentation sources.
- `../makeDoc/` — the `DocHelp` toolbox that does the publishing; `makeDoc.m`
  loads it via `addpath ../../makeDoc; DocHelpInstall`. Its `@DocFile/` methods
  are the API (`publish.m` is the pipeline, `generateScript.m` turns help
  comments into publishable scripts, `makeHelpToc.m` builds the TOC XML,
  `deadlink.m` checks links). It has its own CLAUDE.md covering the pipeline
  and the `.m` comment authoring conventions in detail.
- `.` — this site, the output target.

```matlab
makeDoc                       % everything: function reference + doc + examples
makeDoc('doc')                % only pages/documentation_matlab
makeDoc('ref')                % only pages/function_reference_matlab
makeDoc('examples')           % only pages/examples_matlab
makeDoc('force')              % republish even when the source is not newer
makeDoc('checkLinks')         % dead-link scan over the generated HTML
makeDoc('clear')              % interactive: wipe generated pages + reload mtexdata
makeDoc('keepImages')         % skip the image revert pass at the end (see below)
makeDoc('skipDirtyImages')    % do not republish pages with uncommitted images (see below)
makeDoc('hideFigures')        % publish without the figures appearing on screen
makeDoc('file','EBSDTutorial')          % just this page
makeDoc('doc','file','Plotting')        % just this folder
makeDoc('file',{'Multiplot','Legends'}) % several
```

`'file'` matches its pattern as a substring of the full source path, so a page
name, a folder or a full path all work. It implies `'force'` — naming a page
means you want it rebuilt — and it leaves the sidebars alone, since those can
only be regenerated from the complete file list. Selection is
`@DocFile/select.m` in `../makeDoc`, the counterpart of `exclude`.

`makeDoc.m` sets `options.outDir` per section, writes figures to `../images`,
uses `matlab/web.xsl` (`examples.xsl` for examples) as the `publish`
stylesheet, and emits Liquid-aware HTML: code blocks become
`{% highlight matlab %}` and figures `{% include inline_image.html %}`.
`makeHelpToc` writes `funcRef.xml` / `doc.xml` / `examples.xml`, which
`xml2yml.m` converts into the sidebar YAML.

### Keeping the image diff meaningful

`makeDoc` overwrites every figure it re-renders, and most re-renders are the
same figure drawn slightly differently — anti-aliasing lands on other pixels,
and `mogrify -trim` crops to content so the canvas jitters. Two things keep
that noise out of `git status`, so that what remains modified is the real
change set — which is how the image diff doubles as a unit test for the
toolbox.

**Fixed figure sizes.** MTEX derives figure sizes from the screen, so the same
figure comes out at a different pixel size on a different monitor and the whole
of `images/` changes as soon as the docs are rebuilt elsewhere. `makeDoc.m` pins
this with `setMTEXpref('screenSize',[1920 1200])` — the size the stored images
were rendered at. Changing that number rewrites every image.

**The revert pass.** `makeDoc` finishes by running

```bash
python3 tools/revert-unchanged-images.py            # --dry-run to only score
```

which restores the committed version of every image that changed only
cosmetically. It is a normal script, so it can also be re-run by hand at any
time; `makeDoc('keepImages')` skips it.

The score is scale-invariant (both images are cropped to their content box and
resized to a common grid) and ignores differences a nearby pixel of the other
image can account for, so it is blind to rescaling and anti-aliasing but still
catches a moved marker or a relabelled axis. It errs towards keeping: on the
Jul 2026 rebuild it reverted 272 of 573 modified images, and every pair
inspected below the 0.20 threshold was visually identical. `--threshold` retunes
it; `--dry-run` prints every score, sorted, so the band around the cut can be
eyeballed first.

### Uncommitted images as a rebuild criterion

An image left modified after the revert pass is normally the trace of an MTEX
bug that was found and fixed in `../master` — the doc source itself never
changed. `publish.m` would therefore skip that page forever, and its figure
would keep whatever the earlier render produced instead of being re-tested
against the toolbox of today.

So `makeDoc` republishes a page when *either* its source is newer than its HTML
*or* one of its images differs from the committed one — a union, which is why
this cannot go through `select`/`'file'` (those narrow the file list rather than
widen the rebuild set). `makeDoc.m` asks git for the modified images once,
before any publishing, maps `<docName>_NN.png` back to the doc name, and hands
the list to `publish.m` as `options.forceDoc`; the toolbox itself stays
git-agnostic. The query is the same predicate the revert script uses, so the two
cannot disagree about what changed.

This closes a loop: the revert pass decides what stays dirty, and what stays
dirty is what gets rebuilt next run. It does not converge on its own — a page
whose figure genuinely changed is rebuilt on every run until the image is
committed. `makeDoc('skipDirtyImages')` opts out for a plain incremental build.

### Fitting hand-made images to a common size

`tools/center-pngs.py` and `tools/center-gifs.py` (Pillow, no MTEX involved)
rescale a hand-maintained asset — a person's photo, a workshop thumbnail — into
a fixed canvas, preserving the aspect ratio and padding the rest:

```bash
python3 tools/center-pngs.py in.png "400,300" "255,255,255,0" images/profiles/out.png
```

Args are positional: input, `"width,height"`, RGBA padding colour, output. The
GIF variant does the same frame by frame.

## Editing documentation content (in `../master/doc/`)

Doc sources are MATLAB cell-mode scripts: `%% Section title` starts a cell,
`%`-comment lines are the prose, everything else is code that gets *executed*
during publishing (so figures and printed output in the generated page are real
MTEX output — a broken snippet fails the build for that page). Inside comments,
`|text|` is inline code and `<EBSD.load.html EBSD.load>` is a cross-link to
another generated page.

Structure and sidebar order come from the `.toc` files, not from directory
listings: each folder has a landing `<Folder>.m` and a `<Folder>.toc` whose
lines are `basename` + optional display title (`EBSDTutorial  EBSD`). The
top-level `Documentation.toc` lists the folders; `FunctionReference.toc` lists
`*_index` entries. A file not named in a `.toc` still publishes but does not
appear in the sidebar.

Page names are the source basenames: `doc/Tutorials/EBSDTutorial.m` →
`EBSDTutorial.html`, `EBSDAnalysis/@EBSD/load.m` → `EBSD.load.html`. To find
the source behind any published page, read the "edit page" link at the top of
the generated HTML — it points at the file's path in the `mtex` repo.

`../master/doc/html/` is the *MATLAB-internal* help build (a separate output of
the same sources); it has nothing to do with this site.

## Page conventions

Every page carries front matter and its own `permalink`; the site has no
`baseurl` and all pages live flat at the site root (`EBSDTutorial.html`,
`EBSD.load.html`, …), regardless of their folder under `pages/`:

```yaml
---
title: EBSD Tutorial
sidebar: documentation_sidebar     # key into _data/sidebars/<name>.yml
permalink: EBSDTutorial.html
folder: documentation
toc: false
---
```

- `_includes/sidebar.html` renders `site.data.sidebars[page.sidebar].entries`;
  an entry is only rendered if its `output` contains `web`, so every
  folder/item needs `output: web`. Nesting is `folders → folderitems →
  subfolders → subfolderitems` — deeper levels are not supported.
- `hide_sidebar: true` for full-width pages (e.g. `index.md`).
- The front matter must be valid YAML, and Jekyll fails *soft* when it isn't:
  it drops the whole block, so the page loses its `permalink` and gets
  published under its source path (`/pages/documentation_matlab/Foo.html`)
  instead of `/Foo.html`, with no sidebar entry — the build still reports
  success. A `%%` heading containing a colon used to trigger exactly this;
  `web.xsl`/`examples.xsl` now emit the title quoted.
- Internal links: `{% include reference.html link="people" content="Team" %}`
  (auto-targets `_blank` for `://` links). Images: `{% include inline_image.html file="Foo_01.png" %}`
  — the path is resolved relative to `images/`.
- Callouts: `_includes/{note,tip,warning,important,callout}.html`.
- `search.json` is a Liquid template iterating `site.pages`; add
  `search: exclude` to keep a page out of the client-side search index
  (`js/jekyll-search.js`).
- Top navigation comes from `_data/topnav.yml` and points at permalinks
  (`/Documentation`, `/function_reference`, `/workshop26`, …).
- Markdown is kramdown with GFM input; syntax highlighting is Rouge.
  Generated pages are raw HTML with front matter, which Jekyll still runs
  through Liquid.

`./createtag <tag>` is a leftover theme script that scaffolds tag pages under
`pages/tags/`; neither that directory nor `_data/tags.yml` exists here, so it
will fail as-is.
