---
title: 'SO3FunBingham.radon'
sidebar: function_reference_sidebar
permalink: SO3FunBingham.radon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunBingham.radon.html
status: Reference
---
{% raw %}
A method of [SO3FunBingham](SO3FunBingham_index_py.html).

the Radon transform of a Bingham distribution: its pole figure, in closed form, its
inverse pole figure, or their values

## Syntax

The pole figure of the crystal direction h:

```python
pdf = odf.radon(h)
```

The inverse pole figure of the specimen direction r:

```python
ipdf = odf.radon(r=r)
```

The pole figure at the directions r:

```python
val = odf.radon(h, r)
```

The superposed pole figure of several directions:

```python
pdf = odf.radon([h1, h2], superposition=[0.5, 0.5])
```

A harmonic expansion of another bandwidth:

```python
pdf = odf.radon(h, bandwidth=32)
```

The pole figure of h at r is the mean of the density over the orientations taking h to r,
a great circle in the quaternions; for a Bingham distribution it is a closed form in a
Bessel function, Kunze and Schaeben's formula, which is expanded into spherical harmonics.
The inverse pole figure goes through the harmonic form of the distribution. Several
crystal directions give the weighted sum of their pole figures, the pole figure of
superposed reflections, equally weighted unless superposition is given.

## Input

| | |
|---|---|
| `odf` | SO3FunBingham |

## Output

| | |
|---|---|
| `pdf` | S2FunHarmonic, the pole figure in the specimen frame, or the inverse pole figure in the crystal frame |
| `val` | the values of the pole figure at r |

## Keywords

| | default | |
|---|---|---|
| `h` | `None` | Miller or vector3d, the crystal direction, or a list of them |
| `r` | `None` | vector3d, the specimen direction |
| `superposition` | `None` | the weights of several crystal directions |
| `bandwidth` | `None` | the bandwidth of the harmonic expansion; 64 or the preference maxS2Bandwidth, the smaller, for the pole figure |

## References

- K. Kunze, H. Schaeben, The Bingham distribution of quaternions and its spherical Radon transform in texture analysis, Mathematical Geology 36 (2004) 917-943

## See also

SO3Fun.radon, [BinghamODF](BinghamODF_py.html), [calcPoleFigure](SO3Fun.calcPoleFigure_py.html), [plotPF](SO3Fun.plotPDF_py.html)

MATLAB's [SO3FunBingham.radon](SO3FunBingham.radon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L240">source</a></font>
{% endraw %}
