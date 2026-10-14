---
title: 'The class SO3VectorFieldHandle'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHandle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldHandle_index.html
status: Reference
---
{% raw %}
a vector field on SO(3) given by a callable returning vectors or tangent vectors at
orientations, in the left or right tangent space; bandwidth is the hint for its harmonic form

## Syntax

```python
SO3VectorFieldHandle(lambda ori: ..., cs, ss, 'left')
```

## Members

| | |
|---|---|
| [eval](SO3VectorFieldHandle.eval_py.html) | the tangent vectors of the field at orientations, by the callable |
| [frameA](SO3VectorFieldHandle.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3VectorFieldHandle.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [rotate](SO3VectorFieldHandle.rotate_py.html) | the field turned by a rotation, from the left or with side='right' from the right, again a handle |
| [SO3VectorFieldHandle](SO3VectorFieldHandle.SO3VectorFieldHandle_py.html) | a vector field on SO(3) given by a callable returning vectors or tangent vectors at orientations, in the left or right tangent space |

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorFieldHandle_index](SO3VectorFieldHandle_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L898">source</a></font>
{% endraw %}
