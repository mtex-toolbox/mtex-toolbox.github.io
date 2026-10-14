---
title: 'grain3Boundary.hasGrain'
sidebar: function_reference_sidebar
permalink: grain3Boundary.hasGrain_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [grain3Boundary](grain3Boundary_index_py.html).

the boundary faces of a grain, or between two grains

## Syntax

The faces of grain 1:

```python
ind = gB.hasGrain(1)
```

The faces of grain 1 or 2:

```python
ind = gB.hasGrain([1, 2])
```

The faces between grains 1 and 2:

```python
ind = gB.hasGrain(1, 2)
```

The grains are given by their ids, grains.id. MATLAB's grain3Boundary has no hasGrain; the
faces of grains are there selected through grains.boundary.

## Input

| | |
|---|---|
| `gB` | grain3Boundary |
| `g` | a grain id, or a list of them |

## Output

| | |
|---|---|
| `ind` | boolean mask of the faces |

## Keywords

| | default | |
|---|---|---|
| `h` | `None` | a second grain id: the faces between g and h |

## See also

[grain3Boundary.hasPhase](grain3Boundary.hasPhase_py.html), [grain3d.neighbors](grain3d.neighbors_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3boundary.py#L315">source</a></font>
{% endraw %}
