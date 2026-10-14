---
title: 'EBSD.fill'
sidebar: function_reference_sidebar
permalink: EBSD.fill_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.fill.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the map with every pixel that carries no measurement solved for, the measured ones left
exactly as they are: the hole is filled with the continuation of the field that encloses
it. A pixel the outside reaches without crossing a measurement stays empty, unless
extrapolate. The numeric properties are filled by the same solve, the labels copied from
the nearest measured pixel. fill(ebsd, grains), MATLAB's form, fills a pixel only from the
grain whose polygon holds it: one inside no grain becomes notIndexed, one its grain's
measurements do not reach over the lattice takes the grain's mean orientation

## Syntax

```python
EBSD.fill(ebsd, F=None, grains=None, extrapolate=False)
```

MATLAB's [EBSD.fill](EBSD.fill.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L304">source</a></font>
{% endraw %}
