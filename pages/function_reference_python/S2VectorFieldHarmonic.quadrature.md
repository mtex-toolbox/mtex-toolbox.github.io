---
title: 'S2VectorFieldHarmonic.quadrature'
sidebar: function_reference_sidebar
permalink: S2VectorFieldHarmonic.quadrature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2VectorFieldHarmonic.quadrature.html
status: Reference
---
{% raw %}
A method of [S2VectorFieldHarmonic](S2VectorFieldHarmonic_index_py.html).

S2VectorFieldHarmonic.quadrature(f, bandwidth=L), from a callable or from nodes and
values with their weights, MATLAB's name for the constructor

## Syntax

<div class="mx-form" markdown="1">

```python
vF = S2VectorFieldHarmonic.quadrature(lambda v: v.cross(zvector), bandwidth=8)
```

Of a function returning vectors.

</div>

<div class="mx-form" markdown="1">

```python
vF = S2VectorFieldHarmonic.quadrature(v, w, bandwidth=8, weights=wq)
```

Of vectors w at directions v.

</div>

## Description

A function is approximated by quadrature on a grid of the bandwidth, componentwise in x, y
and z; vectors at scattered directions by the quadrature sum with the weights given, which
is exact only for the weights of a quadrature rule; S2VectorFieldHarmonic.interpolate fits
them by least squares.

## Input

| `f` | a function of vector3d returning vectors, S2VectorField, or vector3d of directions |
| `args` | the vectors at the directions, and the frame of the field |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the largest harmonic degree; by default the preference 'defaultS2Bandwidth', for a field the field's |
| `weights` | `None` | the quadrature weights of vectors at scattered directions, equal ones of sum 4 pi by default |

## Output

| `vF` | S2VectorFieldHarmonic |

## See also

[S2VectorFieldHarmonic](S2VectorFieldHarmonic_index_py.html), [S2VectorFieldHarmonic.interpolate](S2VectorFieldHarmonic.interpolate_py.html)

MATLAB's [S2VectorFieldHarmonic.quadrature](S2VectorFieldHarmonic.quadrature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2vectorfield.py#L289">source</a></font>
{% endraw %}
