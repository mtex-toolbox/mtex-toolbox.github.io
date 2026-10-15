---
title: 'SO3Fun.centerSpecimen'
sidebar: function_reference_sidebar
permalink: SO3Fun.centerSpecimen_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.centerSpecimen.html
status: Reference
---
{% raw %}
an orientation density of an assumed orthotropic texture rotated so that its two fold axes
lie on the specimen axes

## Syntax

<div class="mx-form" markdown="1">

```python
odr, rot, v1, v2 = centerSpecimen(odf)
```

Starting at the x axis.

</div>

<div class="mx-form" markdown="1">

```python
odr, rot, v1, v2 = centerSpecimen(odf, yvector, delta=30*degree, verbose=True)
```

Another start, a smaller search.

</div>

## Description

The function finds the two fold axes of a texture that should have orthorhombic specimen
symmetry but was measured slightly turned, and turns it back. A candidate axis is scored
by how much the density changes when turned by 180 degree about it; the fit verbose
reports is one minus that change, relative to the norm of the density.

The first axis is searched on a cap of opening delta about v0 and refined, the second on
the fan perpendicular to the first. The rotation carries the two axes onto the specimen
axes nearest to them; v2 is returned made exactly perpendicular to v1.

The search and the result use the harmonic series of the given bandwidth, so odr is
truncated to it. MATLAB's flags 'Fourier' and 'silent' change nothing; its 'SO3Grid' and
'resolution' are not taken.

## Input

| `odf` | SO3Fun |
| `v0` | vector3d, the start of the search for the first axis, the x axis by default |

## Keywords

| keyword | default | description |
|---|---|---|
| `delta` | `45*degree` | the opening angle of the cap about v0 searched for the first axis |
| `bandwidth` | `16` | the degree of the harmonic series the search compares |
| `verbose` | `False` | report the fit of every step |

## Output

| `odr` | SO3FunHarmonic, the rotated density |
| `rot` | rotation, the rotation applied, odr = rotate(odf, rot) |
| `v1, v2` | vector3d, the two fold axes found |

## See also

[SO3Fun.rotate](SO3Fun.rotate_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html)

## Used on

[DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html)

MATLAB's [SO3Fun.centerSpecimen](SO3Fun.centerSpecimen.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L1258">source</a></font>
{% endraw %}
