---
title: 'orientation.log'
sidebar: function_reference_sidebar
permalink: orientation.log_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.log.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the logarithm of an orientation, the tangent vector at a reference pointing to it

## Syntax

<div class="mx-form" markdown="1">

```python
v = log(ori)
```

At the identity.

</div>

<div class="mx-form" markdown="1">

```python
v = log(ori, oriRef)
```

At oriRef, in specimen coordinates.

</div>

<div class="mx-form" markdown="1">

```python
v = log(ori, oriRef, side='right')
```

At oriRef, in crystal coordinates.

</div>

<div class="mx-form" markdown="1">

```python
v = log(mori, 'right')
```

The misorientation vector in crystal coordinates.

</div>

## Description

The tangent vector v at oriRef with exp(v) = ori, the misorientation vector of ori relative
to oriRef. The pair is reduced by symmetry first, as angle does it, so that the vector
describes the two crystals and not their stored representatives: norm(log(ori, oriRef)) is
angle(ori, oriRef). With side 'left' the vector is ori * inv(oriRef) taken to the tangent
space, a specimen direction; with 'right' it is inv(oriRef) * ori, a crystal direction.

## Input

| `ori` | orientation |
| `ref` | orientation, the reference, by default the identity between the frames of ori; or 'left' or 'right', the side |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left', the vector in specimen coordinates, or 'right', in crystal coordinates, MATLAB's SO3TangentSpace.leftVector and rightVector |
| `symmetry` | `True` | reduce the pair by symmetry first; False takes the rotations as stored, MATLAB's 'noSymmetry' |

## Output

| `v` | SO3TangentVector at the reference, its norm the angle in radians |

## See also

[SO3TangentVector.exp](SO3TangentVector.exp_py.html), [orientation.angle](orientation.angle_py.html), [orientation.axis](orientation.axis_py.html), [RotationTangentSpace](RotationTangentSpace_py.html)

MATLAB's [orientation.log](orientation.log.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L715">source</a></font>
{% endraw %}
