---
title: 'SO3VectorFieldHandle.SO3VectorFieldHandle'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHandle.SO3VectorFieldHandle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldHandle.SO3VectorFieldHandle.html
status: Reference
---
{% raw %}
a vector field on SO(3) given by a callable returning vectors or tangent vectors at
orientations, in the left or right tangent space; bandwidth is the hint for its harmonic form

## Syntax

<div class="mx-form" markdown="1">

```python
SO3VectorFieldHandle(lambda ori: ..., cs, ss, 'left')
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
SO3VectorFieldHandle(fun, *args, bandwidth=None)
```

</div>

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorFieldHandle.SO3VectorFieldHandle](SO3VectorFieldHandle.SO3VectorFieldHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L906">source</a></font>
{% endraw %}
