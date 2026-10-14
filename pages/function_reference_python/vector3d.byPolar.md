---
title: 'vector3d.byPolar'
sidebar: function_reference_sidebar
permalink: vector3d.byPolar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.byPolar.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the vectors of polar angle theta to z and azimuth rho from x towards y, unit vectors

## Syntax

<div class="mx-form" markdown="1">

```python
v = vector3d.byPolar(theta, rho)
```

Directions.

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d.byPolar(theta, rho, antipodal=True)
```

Axes.

</div>

## Description

theta and rho broadcast against each other.

## Input

| `theta` | the polar angles, 0 at z |
| `rho` | the azimuths, 0 at x |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | the vectors as axes, v and -v one |

## Output

| `v` | vector3d of unit vectors |

## See also

[vector3d.theta](vector3d.theta_py.html), [vector3d.rho](vector3d.rho_py.html), [vector3d.byXYZ](vector3d.byXYZ_py.html)

## Used on

[QuasiCrystals](QuasiCrystals_py.html), [WaveVelocities](WaveVelocities_py.html), [ProjectionBasedParameters](ProjectionBasedParameters_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [S2FunAxisField](S2FunAxisField_py.html), [S2FunConcept](S2FunConcept_py.html), [S2FunVectorValued](S2FunVectorValued_py.html), [VectorDefinition](VectorDefinition_py.html), [VectorsAxes](VectorsAxes_py.html), [VectorsExport](VectorsExport_py.html)

MATLAB's [vector3d.byPolar](vector3d.byPolar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L403">source</a></font>
{% endraw %}
