---
title: 'SO3VectorFieldRBF.rotate'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldRBF.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldRBF.rotate.html
status: Reference
---
{% raw %}
A method of [SO3VectorFieldRBF](SO3VectorFieldRBF_index_py.html).

the field turned by a rotation, from the left or with side='right' from the right, the centres
and weights moved; an orientation turns its harmonic form

## Syntax

Turned in the specimen frame:

```python
SO3VF = rotate(SO3VF, rot)
```

Turned in the crystal frame:

```python
SO3VF = SO3VF.rotate(rot, side='right')
```

The centres are multiplied by the rotation, from the left or the right, and the weight
vectors turned where the rotation acts on the tangent space, so the result is again a sum of
kernels. A symmetry the rotation does not map onto itself is dropped with a warning.

## Input

| | |
|---|---|
| `SO3VF` | SO3VectorFieldRBF |
| `rot` | rotation, or an orientation, one |

## Output

| | |
|---|---|
| `SO3VF` | SO3VectorFieldRBF, or SO3VectorFieldHarmonic for an orientation |

## Keywords

| | default | |
|---|---|---|
| `side` | `'left'` | 'left', the specimen side, or 'right', the crystal side; MATLAB's flag 'right' |

## See also

[SO3VectorField.rotate](SO3VectorField.rotate_py.html), [SO3VectorFieldHandle.rotate](SO3VectorFieldHandle.rotate_py.html)

MATLAB's [SO3VectorFieldRBF.rotate](SO3VectorFieldRBF.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L1135">source</a></font>
{% endraw %}
