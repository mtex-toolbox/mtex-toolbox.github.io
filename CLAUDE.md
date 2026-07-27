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
Jekyll on push. `update.sh` is the maintainer's one-shot
`git add . && git commit -m "content update" && git push`.

`_site/` is the local build output and is gitignored (it was tracked until
Jul 2026, as a stale Oct-2024 build). GitHub Pages builds from source and
Jekyll never publishes its own destination directory, so nothing there needs
committing.

## Generated vs. hand-written content

Generated — never hand-edit, changes belong in the MTEX `.m` sources:

- `pages/documentation_matlab/` — from `../master/doc/`
- `pages/function_reference_matlab/` — from the help comments of MTEX's own
  classes/functions (`S2Fun`, `SO3Fun`, `EBSDAnalysis`, `ODFAnalysis`,
  `PoleFigureAnalysis`, `TensorAnalysis`, `plotting`, `geometry`, `interfaces`,
  `tools`) plus `../master/doc/FunctionReference/`
- `pages/examples_matlab/` — from `../examples/`
- `images/` — figures rendered by MATLAB `publish` during the doc build
- `_data/sidebars/documentation_sidebar.yml`, `function_reference_sidebar.yml`,
  `examples_sidebar.yml` — written by `matlab/xml2yml.m` from the `.xml` TOCs

Hand-written: `index.md`, `pages/{addons,download,people,publications,support,videos,workshops,scripts,search,examples,function_reference}/`,
`_data/topnav.yml`, `_data/sidebars/workshops_sidebar.yml`, `_posts/`,
`css/theme-mtex.css`, `_includes/custom/`.

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
```

`makeDoc.m` sets `options.outDir` per section, writes figures to `../images`,
uses `matlab/web.xsl` (`examples.xsl` for examples) as the `publish`
stylesheet, and emits Liquid-aware HTML: code blocks become
`{% highlight matlab %}` and figures `{% include inline_image.html %}`.
`makeHelpToc` writes `funcRef.xml` / `doc.xml` / `examples.xml`, which
`xml2yml.m` converts into the sidebar YAML.

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
