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

<div class="mx-form" markdown="1">

```python
omega = angle(ori)
```

The smallest angle of the equivalents.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(ori, symmetry=False)
```

Ignore the symmetric equivalents.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(ori1, ori2)
```

The misorientation angle between them.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(mori, 'max')
```

The largest angle of the equivalents.

</div>

## Description

For misorientations with grain exchange, ori1.antipodal or ori2.antipodal, the two argument
form is the smaller of the angles to ori2 and to inv(ori2); there is no antipodal option.
With a fibre as other it is the angle to the fibre.

## Input

| `ori` | orientation |

## Keywords

| keyword | default | description |
|---|---|---|
| `other` | `None` | orientation, the second one; a fibre; or 'max' |
| `symmetry` | `True` | reduce over the symmetric equivalents; False the plain angle of the rotations |

## Output

| `omega` | the angles in radians, of the broadcast shape |

## Example

Compare the crystallographic misorientation angle with the angle between the stored
rotations. A 90-degree rotation about a cubic fourfold axis is a crystal symmetry operation.


```python
from mtex import crystalFrame, orientation, degree, angle

cs = crystalFrame('m-3m')
a = orientation.byEuler(0, 0, 0, cs)
b = orientation.byEuler(90*degree, 0, 0, cs)
print('With cubic symmetry (degrees):', round(float(angle(a, b)/degree), 6))
print('Stored rotations (degrees):', round(float(angle(a, b, symmetry=False)/degree), 6))
```

angle returns radians. Dividing by degree converts them to degrees. The default searches
symmetry-equivalent orientations, so these two stored rotations describe the same cubic orientation.

```text
With cubic symmetry (degrees): 0.0
Stored rotations (degrees): 90.0
```


## See also

[orientation.dot](orientation.dot_py.html), [fibre.angle](fibre.angle_py.html), rotation.angle

MATLAB's [orientation.angle](orientation.angle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L552">source</a></font>
{% endraw %}
