---
title: 'SO3FunHarmonic.radon'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.radon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.radon.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the Radon transform of a function on SO(3): its pole figures, inverse pole figures, or their
values (MATLAB's radon, calcPDF and calcIPDF)

## Syntax

The pole figure of the crystal direction h:

```python
pf = SO3F.radon(h)
```

The inverse pole figure of the specimen direction r:

```python
ipf = SO3F.radon(r=r)
```

The pole figure of h at the directions r:

```python
v = SO3F.radon(h, r)
```

Superposed pole figures:

```python
pf = SO3F.radon([h1, h2], superposition=[0.4, 0.6])
```

The pole figure of h is the mean of the function over the orientations g with g h = r, a
function of r on the sphere in the specimen frame; the inverse pole figure of r the same
mean as a function of h in the crystal frame. A Laue group, or an antipodal direction,
makes them antipodal. Several crystal directions give the superposition of their pole
figures, weighted equally unless superposition is given. MATLAB's bandwidth, which cuts
the transform, is not taken: truncate the function first.

## Input

| | |
|---|---|
| `SO3F` | SO3FunHarmonic |
| `h` | Miller or vector3d, the crystal directions, or a list of them |
| `r` | vector3d, the specimen directions |

## Output

| | |
|---|---|
| `pf` | S2FunHarmonic in the specimen frame |
| `ipf` | S2FunHarmonic in the crystal frame |
| `v` | array, the values at the pairs of h and r |

## Keywords

| | default | |
|---|---|---|
| `superposition` | `None` | the weights of several crystal directions |

## See also

[calcPoleFigure](SO3Fun.calcPoleFigure_py.html), [plotPF](SO3Fun.plotPDF_py.html), [plotIPF](SO3Fun.plotIPDF_py.html), [PoleFigure](PoleFigure_index_py.html)

MATLAB's [SO3FunHarmonic.radon](SO3FunHarmonic.radon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L729">source</a></font>
{% endraw %}
