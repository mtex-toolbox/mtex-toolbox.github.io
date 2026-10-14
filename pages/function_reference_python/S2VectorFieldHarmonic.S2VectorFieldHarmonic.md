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
components

## Syntax

A callable of the directions:

```python
vF = S2VectorFieldHarmonic(lambda v: v.cross(vector3d.Z), bandwidth=16)
```

Vectors at directions, by quadrature:

```python
vF = S2VectorFieldHarmonic(v, w, weights=wq)
```

The component functions:

```python
vF = S2VectorFieldHarmonic([sFx, sFy, sFz])
```

The coefficients, (L+1)^2 x 3:

```python
vF = S2VectorFieldHarmonic(fhat, cs)
```

The expansion of another field:

```python
vF = S2VectorFieldHarmonic(sF.grad())
```

MATLAB's form:

```python
vF = S2VectorFieldHarmonic.quadrature(lambda v: v.cross(vector3d.Z))
```

A callable is evaluated on a quadrature grid of the bandwidth and expanded; vectors w at
directions v are expanded with the quadrature weights given, equal ones by default, which
suits directions spread evenly; two component functions leave z zero. The field is
projected onto the fields equivariant under the group of the frame, which a crystal frame
asks for, unless symmetrise=False. vF.x, vF.y, vF.z are the components, vF.bandwidth the
largest degree.

## Input

| | |
|---|---|
| `fun` | callable taking a vector3d and returning vector3d, or an S2VectorField |
| `v` | vector3d, the directions of given vectors |
| `w` | vector3d, the vectors at them |
| `sFx, sFy, sFz` | S2FunHarmonic, the components |
| `fhat` | complex array of (L+1)^2 x 3 coefficients |
| `cs` | crystalFrame or specimenFrame of the directions |

## Output

| | |
|---|---|
| `vF` | S2VectorFieldHarmonic |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the largest degree of the expansion, by default the preference 'defaultS2Bandwidth'; truncates a field given |
| `weights` | `None` | the quadrature weights of the directions v |
| `symmetrise` | `True` | project onto the fields equivariant under the group of the frame |

## See also

[S2VectorField](S2VectorField_index_py.html), [S2FunHarmonic](S2FunHarmonic_index_py.html), [S2AxisFieldHarmonic](S2AxisFieldHarmonic_index_py.html), [S2FunVectorField](S2FunVectorField_py.html)

## Used on

[S2FunVectorField](S2FunVectorField_py.html)

MATLAB's [S2VectorFieldHarmonic.S2VectorFieldHarmonic](S2VectorFieldHarmonic.S2VectorFieldHarmonic.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2vectorfield.py#L181">source</a></font>
{% endraw %}
