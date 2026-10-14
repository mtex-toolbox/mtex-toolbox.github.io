---
title: 'S2VectorFieldHarmonic.S2VectorFieldHarmonic'
sidebar: function_reference_sidebar
permalink: S2VectorFieldHarmonic.S2VectorFieldHarmonic_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2VectorFieldHarmonic.S2VectorFieldHarmonic.html
status: Reference
---
{% raw %}
a vector field on the sphere by the spherical harmonic expansions of its three Cartesian
components, projected onto the fields equivariant under the frame's group

## Syntax

```python
S2VectorFieldHarmonic(fhat, *args, bandwidth=None, weights=None, symmetrise=True)
```

```python
vF = S2VectorFieldHarmonic(fhat, cs)
vF = S2VectorFieldHarmonic(fun, bandwidth=16)          a callable of the directions
vF = S2VectorFieldHarmonic(v, values, weights=w)      vectors at directions, by quadrature
vF = S2VectorFieldHarmonic([fx, fy, fz])               the component functions
```

## Used on

[S2FunVectorField](S2FunVectorField_py.html)

MATLAB's [S2VectorFieldHarmonic.S2VectorFieldHarmonic](S2VectorFieldHarmonic.S2VectorFieldHarmonic.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2vectorfield.py#L181">source</a></font>
{% endraw %}
