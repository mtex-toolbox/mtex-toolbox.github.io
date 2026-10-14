---
title: 'sectorFolds'
sidebar: function_reference_sidebar
permalink: sectorFolds_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the folds of a group's sector, in the order they are applied. Every fold halves the
sector and flips the half between the white centre and the black one; the loop stops when
every boundary plane is a mirror of the group the folds have generated. The groups -1, -3
and -4 have no such fold and no smooth one to one key; hasSmoothKey says so. -3 and -4 fold
their wedge once all the same; the hemisphere of -1 has no plane to single out and stays
whole, white at its pole, as MATLAB's key

## Syntax

One fold: 432 halves its sector to that of m-3m:

```python
folds = sectorFolds(crystalFrame('432').sym)
```

No fold: the sector is bounded by mirrors:

```python
folds = sectorFolds(crystalFrame('m-3m').sym)
```

Another sector, a looser test:

```python
folds = sectorFolds(cs.sym, cs.fundamentalSector(), tol=1e-4)
```

A candidate plane folds the sector when the reflection in it maps the boundary planes of
the sector onto themselves, within tol, and it is taken when it doubles the group to a
reflection group. Which half a fold keeps is a convention: the half the first axis of the
frame not lying in the plane points into.

## Input

| | |
|---|---|
| `pg` | symmetry, the point group |
| `sR` | sphericalRegion, the sector to fold; by default the group's conventional sector |

## Output

| | |
|---|---|
| `folds` | list of (3,) arrays, the normals of the folding planes in the order they apply |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-06` | the tolerance of the test whether a reflection maps the sector onto itself |

## See also

[hasSmoothKey](hasSmoothKey_py.html), [regionCenter](regionCenter_py.html), [HSVDirectionKey](HSVDirectionKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectorfold.py#L127">source</a></font>
{% endraw %}
