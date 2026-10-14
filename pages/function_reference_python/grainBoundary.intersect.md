---
title: 'grainBoundary.intersect'
sidebar: function_reference_sidebar
permalink: grainBoundary.intersect_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.intersect.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

where the line from p to q crosses each segment, MATLAB's [x, y] = intersect(gB, xy1, xy2):
the coordinates per segment, NaN where it is not crossed; segLength=True adds the
intercepts between successive crossings along the line

## Syntax

The crossings:

```python
x, y = gB.intersect([33500, 4500], [36000, 7500])
```

And the intercept lengths:

```python
x, y, L = gB.intersect([33500, 4500], [36000, 7500], segLength=True)
```

The number of crossings:

```python
n = np.sum(~np.isnan(x))
```

A line through a vertex crosses both segments there, as MATLAB's tolerance has it. MATLAB
returns the intercepts as a third output always; here segLength=True asks for them.

## Input

| | |
|---|---|
| `gB` | grainBoundary |
| `p, q` | the end points of the line, (x, y) or a vector3d |

## Output

| | |
|---|---|
| `x, y` | the coordinates of the crossing per segment, NaN where none |
| `L` | the lengths between successive crossings along the line (segLength=True) |

## Keywords

| | default | |
|---|---|---|
| `segLength` | `False` | also return the intercept lengths |

## See also

[grainBoundary.inpolygon](grainBoundary.inpolygon_py.html)

MATLAB's [grainBoundary.intersect](grainBoundary.intersect.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L553">source</a></font>
{% endraw %}
