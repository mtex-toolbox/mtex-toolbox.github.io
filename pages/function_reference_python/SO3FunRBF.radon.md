---
title: 'SO3FunRBF.radon'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.radon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.radon.html
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the Radon transform of a kernel sum: the pole figure of a crystal direction, the inverse
pole figure of a specimen direction, or the pole density of both

## Syntax

The pole figure of h:

```python
S2F = SO3F.radon(h)
```

The inverse pole figure of r:

```python
S2F = SO3F.radon(r=r)
```

The pole figure of h at r:

```python
v = SO3F.radon(h, r)
```

The superposed pole figure:

```python
S2F = SO3F.radon([h1, h2], superposition=[0.3, 0.7])
```

The Radon transform of f at (h, r) is the mean of f over the orientations taking h to r.
For a kernel sum it is again a sum of radial kernels on the sphere, the kernel's Radon
transform at the centres applied to h, returned as a harmonic expansion. Several crystal
directions are superposed with the weights of superposition. It replaces MATLAB's
calcPDF, pdf and ipdf.

## Input

| | |
|---|---|
| `SO3F` | SO3FunRBF |
| `h` | Miller or vector3d, the crystal direction, or a list of them to superpose |
| `r` | vector3d, the specimen direction |

## Output

| | |
|---|---|
| `S2F` | S2FunHarmonic, the pole figure on the specimen sphere or the inverse pole figure on the crystal sphere |
| `v` | the values at r, given h and r |

## Keywords

| | default | |
|---|---|---|
| `superposition` | `None` | the weights of the superposed crystal directions |
| `bandwidth` | `None` | the harmonic degree of the result, by default the kernel's |

## See also

[calcPoleFigure](SO3Fun.calcPoleFigure_py.html), [SO3FunCBF.radon](SO3FunCBF.radon_py.html), [plotPF](SO3Fun.plotPDF_py.html), [plotIPF](SO3Fun.plotIPDF_py.html)

MATLAB's [SO3FunRBF.radon](SO3FunRBF.radon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L370">source</a></font>
{% endraw %}
