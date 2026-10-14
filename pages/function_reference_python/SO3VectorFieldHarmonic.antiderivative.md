---
title: 'SO3VectorFieldHarmonic.antiderivative'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHarmonic.antiderivative_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldHarmonic.antiderivative.html
status: Reference
---
{% raw %}
A method of [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html).

the function of mean zero whose gradient the field is; raises unless the field is a gradient,
or conservative=True says it is; with x its values at the orientations x

## Syntax

```python
F.antiderivative()
F.antiderivative(conservative=True)
F.antiderivative(tol=1e-3)
```

## Signature

```python
SO3VectorFieldHarmonic.antiderivative(self, x=None, **kwargs)
```

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorFieldHarmonic.antiderivative](SO3VectorFieldHarmonic.antiderivative.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L255">source</a></font>
{% endraw %}
