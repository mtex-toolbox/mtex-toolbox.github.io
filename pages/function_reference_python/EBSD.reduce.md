---
title: 'EBSD.reduce'
sidebar: function_reference_sidebar
permalink: EBSD.reduce_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.reduce.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

every n-th measurement along each lattice direction, which is the map at a coarser step;
MATLAB's reduce

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = reduce(ebsd)
```

Every second pixel along both lattice directions.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = reduce(ebsd, 3)
```

Every third pixel.

</div>

## Description

The measurements are selected by their lattice index, so a square, a hexagonal and a
rotated lattice are all reduced alike; the kept sites form the same kind of lattice factor
times coarser, which the result carries. A gridded map gives a grid, a list of
measurements a list.

## Input

| `ebsd` | EBSD with a lattice |

## Keywords

| keyword | default | description |
|---|---|---|
| `factor` | `2` | the step of the reduction, an integer of at least one |

## Output

| `ebsd` | EBSD, the kept measurements |

## See also

[gridify](gridify_py.html), EBSD.lattice

MATLAB's [EBSD.reduce](EBSD.reduce.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L566">source</a></font>
{% endraw %}
