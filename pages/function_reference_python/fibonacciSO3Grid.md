---
title: 'fibonacciSO3Grid'
sidebar: function_reference_sidebar
permalink: fibonacciSO3Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a low discrepancy grid of orientations from a super-Fibonacci spiral, restricted to the
fundamental region of the frame pair; MATLAB's fibonacciSO3Grid

## Syntax

<div class="mx-form" markdown="1">

```python
S3G = fibonacciSO3Grid(cs)
```

5 degree resolution.

</div>

<div class="mx-form" markdown="1">

```python
S3G = fibonacciSO3Grid(cs, ss, points=10000)
```

About 10000 nodes in the region.

</div>

<div class="mx-form" markdown="1">

```python
S3G = fibonacciSO3Grid(cs, ss, resolution=2.5*degree)
```

A finer grid.

</div>

<div class="mx-form" markdown="1">

```python
S3G = fibonacciSO3Grid(cs, cs, antipodal=True)
```

Misorientations with antipodal symmetry.

</div>

## Description

The nodes are the super-Fibonacci spiral of Alexa with round(8 pi^2 / resolution^3) nodes
over SO(3), one node per resolution^3 of its volume, trimmed to the fundamental region. Unlike
a lattice the number of nodes is free; points sets the resolution from the volume fraction
of the fundamental region. To cover a ball around one orientation take
localOrientationGrid.

## Input

| `CS` | crystalFrame |
| `SS` | specimenFrame or crystalFrame, by default the default specimen frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `5*degree` | the node spacing, in radians |
| `points` | `None` | the approximate number of nodes in the fundamental region, instead of the resolution |
| `antipodal` | `False` | the fundamental region with the antipodal symmetry of misorientations, half the region |

## Output

| `S3G` | SO3FibonacciGrid, orientations from CS to SS |

## References

- M. Alexa, Super-Fibonacci spirals: fast, low-discrepancy sampling of SO(3), CVPR 2022, 8291-8300

## See also

[superfibonacciSO3Grid](superfibonacciSO3Grid_py.html), [equispacedSO3Grid](equispacedSO3Grid_py.html), [localOrientationGrid](localOrientationGrid_py.html), [fibonacciS2Grid](fibonacciS2Grid_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/superfibonacci.py#L160">source</a></font>
{% endraw %}
