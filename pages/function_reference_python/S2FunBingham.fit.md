---
title: 'S2FunBingham.fit'
sidebar: function_reference_sidebar
permalink: S2FunBingham.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunBingham.fit.html
status: Reference
---
{% raw %}
A method of [S2FunBingham](S2FunBingham_index_py.html).

the Bingham distribution fitted to directions or axes, with the confidence ellipse of its
modal axis

## Syntax

The fitted distribution:

```python
f = S2FunBingham.fit(v)
```

Weighted directions:

```python
f = S2FunBingham.fit(v, weights=w)
```

With the confidence ellipse:

```python
f, ab, rot = S2FunBingham.fit(v, confidenceEllipse=True, p=0.95)
```

The eigen decomposition of the scatter matrix of the directions, sum of w v v^T, gives
the axes of the distribution, and Newton's method on the moments its shape parameters,
ascending to zero at the third axis, the mode. A direction and its antipode count alike.

The confidence ellipse of the modal axis is the asymptotic covariance of the largest
eigenvector, Tanaka's: its semi-axes ab in radians and the rotation rot turning the z axis
onto the mode, drawn by ellipse(rot, ab[0], ab[1]).

## Input

| | |
|---|---|
| `v` | vector3d or Miller, the directions or axes |

## Output

| | |
|---|---|
| `f` | S2FunBingham, in the frame of v |
| `ab` | the two semi-axes of the confidence ellipse in radians |
| `rot` | rotation, the position of the confidence ellipse |

## Keywords

| | default | |
|---|---|---|
| `weights` | `None` | the weights of the directions, equal by default |
| `confidenceEllipse` | `False` | return also ab and rot, MATLAB's second and third output |
| `p` | `0.95` | the confidence level of the ellipse |

## References

- H. Tanaka, Circular asymmetry of the paleomagnetic directions observed at low latitude volcanic sites, Earth Planets Space 51 (1999) 1279-1286

## See also

[S2FunBingham](S2FunBingham_index_py.html), [BinghamODF](BinghamODF_py.html), [calcBinghamODF](orientation.calcBinghamODF_py.html), [ellipse](ellipse_py.html)

MATLAB's [S2FunBingham.fit](S2FunBingham.fit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L503">source</a></font>
{% endraw %}
