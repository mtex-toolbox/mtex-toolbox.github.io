---
title: 'grain2d.reduceBoundary'
sidebar: function_reference_sidebar
permalink: grain2d.reduceBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.reduceBoundary.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the grains with every n-th vertex of their boundary kept along each chain, whatever the
shape, the inner boundary kept on it; MATLAB's grain2d.reduceBoundary

## Syntax

Every second vertex:

```python
grains = grains.reduceBoundary()
```

Every fourth vertex:

```python
grains = grains.reduceBoundary(4)
```

The junctions stay where they are, so which grains touch, and where, is unchanged, and the
polygons are traced again. The vertices both boundaries use stay, and no grain collapses.
It thins a straight run and a corner alike; simplifyBoundary spends the vertices where the
shape needs them.

## Input

| | |
|---|---|
| `grains` | grain2d |

## Output

| | |
|---|---|
| `grains` | grain2d |

## Keywords

| | default | |
|---|---|---|
| `n` | `2` | keep every n-th vertex along each chain |

## See also

[grainBoundary.reduce](grainBoundary.reduce_py.html), [grain2d.simplifyBoundary](grain2d.simplifyBoundary_py.html), [grain2d.refineBoundary](grain2d.refineBoundary_py.html)

MATLAB's [grain2d.reduceBoundary](grain2d.reduceBoundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundaryresampling.py#L443">source</a></font>
{% endraw %}
