---
title: 'superfibonacciSO3Grid'
sidebar: function_reference_sidebar
permalink: superfibonacciSO3Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a super-Fibonacci grid of orientations covering one fundamental region of the frame pair,
its resolution the mean spacing of nearest neighbours

## Syntax

About 5 degree spacing:

```python
S3G = superfibonacciSO3Grid(cs)
```

About 1000 nodes in the region:

```python
S3G = superfibonacciSO3Grid(cs, ss, points=1000)
```

A finer grid:

```python
S3G = superfibonacciSO3Grid(cs, resolution=2.5*degree)
```

The nodes are the super-Fibonacci spiral of Alexa, a low discrepancy sequence of
quaternions, trimmed to the fundamental region. The length of the spiral is set from the
resolution, taken as the mean distance to the nearest neighbour; with points it is set from
the fraction of SO(3) the region fills, which is measured on a probe spiral, so that any
pair of symmetries calibrates itself. fibonacciSO3Grid is MATLAB's form, one node per
resolution^3 of the volume.

## Input

| | |
|---|---|
| `CS` | crystalFrame |
| `SS` | specimenFrame, by default the default specimen frame |

## Output

| | |
|---|---|
| `S3G` | SO3FibonacciGrid, orientations from CS to SS |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `5*degree` | the mean distance to the nearest node, in radians |
| `points` | `None` | the approximate number of nodes in the fundamental region, instead of the resolution |

## References

- M. Alexa, Super-Fibonacci spirals: fast, low-discrepancy sampling of SO(3), CVPR 2022, 8291-8300

## See also

[fibonacciSO3Grid](fibonacciSO3Grid_py.html), [equispacedSO3Grid](equispacedSO3Grid_py.html), [localOrientationGrid](localOrientationGrid_py.html), [fibonacciS2Grid](fibonacciS2Grid_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/superfibonacci.py#L86">source</a></font>
{% endraw %}
