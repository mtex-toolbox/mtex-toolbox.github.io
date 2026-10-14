---
title: 'Euler'
sidebar: function_reference_sidebar
permalink: Euler_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
express rotations as Euler angles in radians.

## Syntax

<div class="mx-form" markdown="1">

```python
alpha, beta, gamma = Euler(rot)
```

</div>

## Description

For an MTEX object, Euler(x, ...) calls x.Euler(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
Euler(x, *args, **kwargs)
```

</div>

## Methods it calls

| [orthogonalTransform](orthogonalTransform.Euler_py.html) | the Euler angles of the rotational part, in the convention named or the session's |
| [quaternion](quaternion.Euler_py.html) | the Euler angles (alpha, beta, gamma) in the convention named, the session's by default |

## Used on

[OrientationStandard](OrientationStandard_py.html), [NotationAndConventions](NotationAndConventions_py.html), [RotationDefinition](RotationDefinition_py.html), [RotationOperations](RotationOperations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
