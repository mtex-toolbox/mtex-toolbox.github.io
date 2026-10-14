---
title: 'quaternion.geodesic'
sidebar: function_reference_sidebar
permalink: quaternion.geodesic_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.geodesic.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

interpolate along the shortest rotational path between two rotations.

## Syntax

<div class="mx-form" markdown="1">

```python
middle = rot1.geodesic(rot2, 0.5)
```

</div>

## Description

Parameter s=0 gives the first endpoint and s=1 the second. The interpolation uses
rotation angle rather than a linear average of quaternion coefficients; orientations
also account for their crystal and specimen symmetries.

## Input

| `other` | second rotation or orientation |
| `s` | interpolation parameter, usually in [0, 1] |

## See also

[geodesic](geodesic_py.html), [quaternion.log](quaternion.log_py.html), quaternion.exp

## Signature

<div class="mx-form" markdown="1">

```python
quaternion.geodesic(self, other, s)
```

</div>

MATLAB's [quaternion.geodesic](quaternion.geodesic.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L494">source</a></font>
{% endraw %}
