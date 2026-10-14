---
title: 'S2AxisFieldHarmonic.quadrature'
sidebar: function_reference_sidebar
permalink: S2AxisFieldHarmonic.quadrature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2AxisFieldHarmonic.quadrature.html
status: Reference
---
{% raw %}
A method of [S2AxisFieldHarmonic](S2AxisFieldHarmonic_index_py.html).

S2AxisFieldHarmonic.quadrature(f, bandwidth=L), MATLAB's name for the constructor

## Syntax

<div class="mx-form" markdown="1">

```python
aF = S2AxisFieldHarmonic.quadrature(f, bandwidth=8)
```

Of a function returning axes.

</div>

<div class="mx-form" markdown="1">

```python
aF = S2AxisFieldHarmonic.quadrature(v, a, bandwidth=8, weights=w)
```

Of axes a at directions v.

</div>

## Description

A function is approximated by quadrature on a grid of the bandwidth, axes at scattered
directions by the quadrature sum with the weights given; S2AxisFieldHarmonic explains the
representation.

## Input

| `f` | a function of vector3d returning axes, S2VectorField or S2AxisField, or vector3d of directions |
| `args` | the axes at the directions, and the frame of the field |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the largest harmonic degree; by default the preference 'defaultS2Bandwidth', for a field the field's |
| `weights` | `None` | the quadrature weights of axes at scattered directions, equal ones of sum 4 pi by default |

## Output

| `aF` | S2AxisFieldHarmonic |

## See also

[S2AxisFieldHarmonic](S2AxisFieldHarmonic_index_py.html), [S2AxisFieldHarmonic.interpolate](S2AxisFieldHarmonic.interpolate_py.html)

MATLAB's [S2AxisFieldHarmonic.quadrature](S2AxisFieldHarmonic.quadrature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2axisfield.py#L175">source</a></font>
{% endraw %}
