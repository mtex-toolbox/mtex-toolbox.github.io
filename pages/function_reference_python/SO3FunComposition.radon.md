---
title: 'SO3FunComposition.radon'
sidebar: function_reference_sidebar
permalink: SO3FunComposition.radon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunComposition.radon.html
status: Reference
---
{% raw %}
A method of [SO3FunComposition](SO3FunComposition_index_py.html).

the Radon transform of a function on SO(3): its pole figures, inverse pole figures or the
values of either, through the harmonic form of the bandwidth

## Syntax

The pole figure of the crystal direction h:

```python
S2F = SO3F.radon(h)
```

The inverse pole figure of the specimen direction r:

```python
S2F = SO3F.radon(r=r)
```

The pole figure of h at the directions r:

```python
v = SO3F.radon(h, r)
```

A superposed pole figure:

```python
S2F = SO3F.radon([h1, h2], superposition=[0.6, 0.4])
```

The pole figure of h at r is the mean of the function over all orientations carrying h
onto r. A function without coefficients, a composition, a handle, is expanded to an
SO3FunHarmonic of the bandwidth first. MATLAB's pdf, ipdf and calcPDF are this function.

## Input

| | |
|---|---|
| `SO3F` | SO3Fun |
| `h` | Miller or vector3d, the crystal direction, or a list of them to superpose |

## Output

| | |
|---|---|
| `S2F` | S2FunHarmonic, the pole figure in the specimen frame or the inverse pole figure in the crystal frame |
| `v` | the values at r |

## Keywords

| | default | |
|---|---|---|
| `r` | `None` | vector3d, the specimen direction of the inverse pole figure, or the directions to evaluate the pole figure at |
| `superposition` | `None` | the weights of several crystal directions, equal unless given |
| `bandwidth` | `None` | the bandwidth of the harmonic form a function without coefficients is expanded to |

## See also

[SO3FunHarmonic.radon](SO3FunHarmonic.radon_py.html), [plotPF](SO3Fun.plotPDF_py.html), [plotIPF](SO3Fun.plotIPDF_py.html)

MATLAB's [SO3FunComposition.radon](SO3FunComposition.radon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L78">source</a></font>
{% endraw %}
