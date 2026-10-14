---
title: 'SO3VectorFieldHarmonic.rotate'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHarmonic.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldHarmonic.rotate.html
status: Reference
---
{% raw %}
A method of [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html).

F'(R) = q F(q^-1 R) for a rotation of the specimen acting on a left field, F(q^-1 R) on
a right one; F'(R) = F(R q^-1) and q^-1 F(R q^-1) for a rotation of the crystal

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

The coefficients of the three components are turned as those of a function, and where the
rotation acts on the tangent space of the field the components are combined linearly as the
vectors turn. A symmetry the rotation does not map onto itself is dropped with a warning. An
orientation turns the field into the other frame of the orientation, as SO3FunHarmonic.rotate.

## Input

| `SO3VF` | SO3VectorFieldHarmonic |
| `rot` | rotation or orientation, one |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left', the specimen side, or 'right', the crystal side; MATLAB's flag 'right' |

## Output

| `SO3VF` | SO3VectorFieldHarmonic |

## See also

[SO3VectorFieldHandle.rotate](SO3VectorFieldHandle.rotate_py.html), [SO3VectorFieldRBF.rotate](SO3VectorFieldRBF.rotate_py.html), [SO3FunHarmonic.rotate](SO3FunHarmonic.rotate_py.html)

MATLAB's [SO3VectorFieldHarmonic.rotate](SO3VectorFieldHarmonic.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L635">source</a></font>
{% endraw %}
