---
title: 'orientation.isclose'
sidebar: function_reference_sidebar
permalink: orientation.isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

equal up to the symmetry of the frames within the angular tolerance tol, between the same
frames; MATLAB's eq

## Syntax

Equal up to symmetry:

```python
b = ori1.isclose(ori2)
```

Within 1 degree:

```python
b = ori1.isclose(ori2, tol=1*degree)
```

Orientations between other frames, or one with grain exchange and one without, are never
close; ori1 == ori2 compares the rotations as stored.

## Input

| | |
|---|---|
| `ori1` | orientation |
| `other` | orientation, or a rotation compared as rotation.isclose |

## Output

| | |
|---|---|
| `b` | bool, of the broadcast shape |

## Keywords

| | default | |
|---|---|---|
| `tol` | `0.0005` | the angular tolerance, in radians |

## See also

[orientation.angle](orientation.angle_py.html), [orientation.unique](orientation.unique_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L571">source</a></font>
{% endraw %}
