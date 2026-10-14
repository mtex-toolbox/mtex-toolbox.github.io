---
title: 'rotation.isclose'
sidebar: function_reference_sidebar
permalink: rotation.isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

equal within the angular tolerance tol, MATLAB's eq

## Syntax

<div class="mx-form" markdown="1">

```python
b = rot1.isclose(rot2)
```

Equal up to 5e-4.

</div>

<div class="mx-form" markdown="1">

```python
b = rot1.isclose(rot2, tol=1*degree)
```

A coarser tolerance.

</div>

## Description

True where |cos(omega / 2)| of the angle omega between them exceeds cos(tol), as
MATLAB's eq, so where omega is below 2 tol; q and -q are one rotation. An improper
transform is never close to a rotation. The operator == compares exactly.

## Input

| `rot1, rot2` | rotation |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `0.0005` | the tolerance, an angle |

## Output

| `b` | boolean array |

## See also

[quaternion.isclose](quaternion.eq_py.html), [rotation.dot](rotation.dot_py.html), [orientation.isclose](orientation.isclose_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L821">source</a></font>
{% endraw %}
