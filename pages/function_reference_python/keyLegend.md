---
title: 'keyLegend'
sidebar: function_reference_sidebar
permalink: keyLegend_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the inverse pole figure key of every indexed phase in a map, drawn in insets to the right
of the map

## Syntax

<div class="mx-form" markdown="1">

```python
axs = keyLegend(mP, ebsd)
```

The keys along z.

</div>

<div class="mx-form" markdown="1">

```python
axs = keyLegend(mP, ebsd, ipfDirection=xvector, width=0.2)
```

Along x, narrower.

</div>

## Description

A map coloured by orientation draws these itself with legend=True. Every phase present
gets the HSV key of its frame, titled by its mineral, one row each; a fundamental sector
that reaches into both hemispheres, of a group without the inversion, takes two insets in
its row, the upper hemisphere above the lower.

## Input

| `mP` | mapPlot, the map plot beside which the keys go |
| `x` | EBSD or grain2d, whose phases are shown |

## Keywords

| keyword | default | description |
|---|---|---|
| `ipfDirection` | `None` | vector3d, the specimen direction of the colouring; the keys, which live in crystal coordinates, are the same for every direction |
| `width` | `0.28` | the width of an inset, as a fraction of the width of the map axes |
| `resolution` | `None` | the mesh of a key in radians; by default from the size of the inset |

## Output

| `axs` | list of the inset axes |

## See also

[ipfHSVKey](ipfHSVKey_index_py.html), [plotKey](plotKey_py.html), [EBSD.plot](EBSD.plot_py.html), [EBSDIPFMap](EBSDIPFMap_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L1333">source</a></font>
{% endraw %}
