---
title: 'S2Fun.smiley'
sidebar: function_reference_sidebar
permalink: S2Fun.smiley_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun.smiley.html
status: Reference
---
{% raw %}
A method of [S2Fun](S2Fun_index_py.html).

the smiley, a test function on the sphere whose face shows where a plot puts the axes

## Syntax

<div class="mx-form" markdown="1">

```python
sF = S2Fun.smiley()
```

Its harmonic expansion by quadrature.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2Fun.smiley(bandwidth=256)
```

Of a given bandwidth.

</div>

<div class="mx-form" markdown="1">

```python
values = S2Fun.smiley(v)
```

Its values at the directions v.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2Fun.smiley(exact=True)
```

The function itself, as a handle.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2Fun.smiley(even=True)
```

On both hemispheres, an antipodal function.

</div>

## Description

The face is a sum of quadratic splines of the cosine about nine centres, the head, two eyes,
the mouth and the nose; it reads upright in the convention 'y↑→x'. The even smiley adds
its reflection through the origin, so it takes the same value at v and -v. Further
keywords go to S2FunHarmonic.quadrature.

## Input

| `v` | vector3d, directions to evaluate at |

## Keywords

| keyword | default | description |
|---|---|---|
| `exact` | `False` | return the function as an S2FunHandle instead of its expansion |
| `even` | `False` | the antipodal smiley, the face also on the lower hemisphere |

## Output

| `sF` | S2FunHarmonic, or S2FunHandle with exact=True |
| `values` | array of the shape of v |

## See also

[S2FunHarmonic.quadrature](S2FunHarmonic.quadrature_py.html), [S2Fun.unimodal](S2Fun.unimodal_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html)

## Used on

[ClusterDemo](ClusterDemo_py.html), [ContourPlots](ContourPlots_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunOperations](S2FunOperations_py.html), [S2FunPlotting](S2FunPlotting_py.html), [S2FunSampling](S2FunSampling_py.html), [S2FunSym](S2FunSym_py.html), [S2FunVectorValued](S2FunVectorValued_py.html)

MATLAB's [S2Fun.smiley](S2Fun.smiley.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funclass.py#L41">source</a></font>
{% endraw %}
