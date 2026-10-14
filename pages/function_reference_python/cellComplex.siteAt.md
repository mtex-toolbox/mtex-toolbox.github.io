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

From mtex.maps.decomposition:

```python
c = decompose(ebsd)
```

The site of the point q near the lattice cell ij:

```python
s = c.siteAt(q, ij)
```

Searched over fewer lattice cells:

```python
s = c.siteAt(q, ij, reach=2)
```

The candidates are the sites of the lattice cells within reach of ij in either index; the
nearest of them to q is returned, NO_PIXEL when there is none. calcGrains asks this for the
corners of a not indexed pixel to find the grain that absorbs it.

## Input

| | |
|---|---|
| `c` | cellComplex |
| `q` | the point (x, y) in the plane of the map |
| `ij` | the lattice indices of the cell the point lies in or near |

## Output

| | |
|---|---|
| `s` | the index of the site, a row of c.siteIJ, or NO_PIXEL |

## Keywords

| | default | |
|---|---|---|
| `reach` | `5` | how many lattice cells either way are searched |

## See also

[calcGrains](EBSD.calcGrains_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/decomposition.py#L70">source</a></font>
{% endraw %}
