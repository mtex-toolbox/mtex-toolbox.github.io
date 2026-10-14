---
title: 'SO3VectorField.SO3VectorField'
sidebar: function_reference_sidebar
permalink: SO3VectorField.SO3VectorField_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorField.SO3VectorField.html
status: Reference
---
{% raw %}
a vector field on SO(3) whose three components are series of Wigner functions: from a
coefficient matrix, another field, tangent vectors at orientations, three component functions
or a callable, in the left or right tangent space, symmetrised to be equivariant

## Syntax

```python
SO3VectorFieldHarmonic(fhat, *args, bandwidth=None, weights=None, symmetrise=True)
```

```python
SO3VectorFieldHarmonic(fhat, cs, ss, 'left')
SO3VectorFieldHarmonic(F, 'right')                   another field on the right side
SO3VectorFieldHarmonic(t, bandwidth=16)              the field through tangent vectors t
SO3VectorFieldHarmonic(lambda ori: ..., cs, ss)      by quadrature
```

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorField.SO3VectorField](SO3VectorField.SO3VectorField.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L287">source</a></font>
{% endraw %}
