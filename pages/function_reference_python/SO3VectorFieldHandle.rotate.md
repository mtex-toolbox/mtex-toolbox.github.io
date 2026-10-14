---
title: 'SO3VectorFieldHandle.rotate'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHandle.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldHandle.rotate.html
status: Reference
---
{% raw %}
A method of [SO3VectorFieldHandle](SO3VectorFieldHandle_index_py.html).

the field turned by a rotation, from the left or with side='right' from the right, again a
handle; an orientation turns its harmonic form

## Syntax

<div class="mx-form" markdown="1">

```python
SO3VF = rotate(SO3VF, rot)
```

Turned in the specimen frame.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VF.rotate(rot, side='right')
```

Turned in the crystal frame.

</div>

## Description

The new handle evaluates the old one at the orientations turned back and turns the vectors
it returns where the rotation acts on their tangent space.

## Input

| `SO3VF` | SO3VectorFieldHandle |
| `rot` | rotation, or an orientation, one |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left', the specimen side, or 'right', the crystal side; MATLAB's flag 'right' |

## Output

| `SO3VF` | SO3VectorFieldHandle, or SO3VectorFieldHarmonic for an orientation |

## See also

[SO3VectorField.rotate](SO3VectorField.rotate_py.html), [SO3VectorFieldRBF.rotate](SO3VectorFieldRBF.rotate_py.html)

MATLAB's [SO3VectorFieldHandle.rotate](SO3VectorFieldHandle.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L945">source</a></font>
{% endraw %}
