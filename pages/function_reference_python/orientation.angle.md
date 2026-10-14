---
title: 'orientation.angle'
sidebar: function_reference_sidebar
permalink: orientation.angle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.angle.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the rotational angle up to symmetry, of the orientation or of the misorientation to other;
MATLAB's orientation.angle

## Syntax

The smallest angle of the equivalents:

```python
omega = angle(ori)
```

Ignore the symmetric equivalents:

```python
omega = angle(ori, symmetry=False)
```

The misorientation angle between them:

```python
omega = angle(ori1, ori2)
```

The largest angle of the equivalents:

```python
omega = angle(mori, 'max')
```

For misorientations with grain exchange, ori1.antipodal or ori2.antipodal, the two argument
form is the smaller of the angles to ori2 and to inv(ori2); there is no antipodal option.
With a fibre as other it is the angle to the fibre.

## Input

| | |
|---|---|
| `ori` | orientation |

## Output

| | |
|---|---|
| `omega` | the angles in radians, of the broadcast shape |

## Keywords

| | default | |
|---|---|---|
| `other` | `None` | orientation, the second one; a fibre; or 'max' |
| `symmetry` | `True` | reduce over the symmetric equivalents; False the plain angle of the rotations |

## See also

[orientation.dot](orientation.dot_py.html), [fibre.angle](fibre.angle_py.html), rotation.angle

MATLAB's [orientation.angle](orientation.angle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L480">source</a></font>
{% endraw %}
