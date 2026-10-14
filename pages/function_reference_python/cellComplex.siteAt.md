---
title: 'cellComplex.siteAt'
sidebar: function_reference_sidebar
permalink: cellComplex.siteAt_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [cellComplex](cellComplex_index_py.html).

the site whose cell covers a point: its nearest site, since a cell is the set of points
nearer to its site than to any other, searched over the lattice cells around the point

## Syntax

<div class="mx-form" markdown="1">

```python
c = decompose(ebsd)
```

From mtex.maps.decomposition.

</div>

<div class="mx-form" markdown="1">

```python
s = c.siteAt(q, ij)
```

The site of the point q near the lattice cell ij.

</div>

<div class="mx-form" markdown="1">

```python
s = c.siteAt(q, ij, reach=2)
```

Searched over fewer lattice cells.

</div>

## Description

The candidates are the sites of the lattice cells within reach of ij in either index; the
nearest of them to q is returned, NO_PIXEL when there is none. calcGrains asks this for the
corners of a not indexed pixel to find the grain that absorbs it.

## Input

| `c` | cellComplex |
| `q` | the point (x, y) in the plane of the map |
| `ij` | the lattice indices of the cell the point lies in or near |

## Keywords

| keyword | default | description |
|---|---|---|
| `reach` | `5` | how many lattice cells either way are searched |

## Output

| `s` | the index of the site, a row of c.siteIJ, or NO_PIXEL |

## See also

[calcGrains](EBSD.calcGrains_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/decomposition.py#L79">source</a></font>
{% endraw %}
