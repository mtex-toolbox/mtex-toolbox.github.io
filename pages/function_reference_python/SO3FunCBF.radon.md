---
title: 'SO3FunCBF.radon'
sidebar: function_reference_sidebar
permalink: SO3FunCBF.radon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunCBF.radon.html
status: Reference
---
{% raw %}
A method of [SO3FunCBF](SO3FunCBF_index_py.html).

the Radon transform of a fibre ODF: the pole figure of a crystal direction, the inverse
pole figure of a specimen direction, or the pole density of both

## Syntax

<div class="mx-form" markdown="1">

```python
S2F = SO3F.radon(h)
```

The pole figure of h.

</div>

<div class="mx-form" markdown="1">

```python
S2F = SO3F.radon(r=r)
```

The inverse pole figure of r.

</div>

<div class="mx-form" markdown="1">

```python
v = SO3F.radon(h, r)
```

The pole figure of h at r.

</div>

## Description

The Radon transform of f at (h, r) is the mean of f over the orientations taking h to r,
computed through the harmonic expansion of the bandwidth. Several crystal directions are
superposed with the weights of superposition. It replaces MATLAB's calcPDF, pdf and
ipdf.

## Input

| `SO3F` | SO3FunCBF |
| `h` | Miller or vector3d, the crystal direction, or a list of them to superpose |
| `r` | vector3d, the specimen direction |

## Keywords

| keyword | default | description |
|---|---|---|
| `superposition` | `None` | the weights of the superposed crystal directions |
| `bandwidth` | `None` | the harmonic degree of the result, by default the kernel's |

## Output

| `S2F` | S2FunHarmonic, the pole figure or the inverse pole figure |
| `v` | the values at r, given h and r |

## See also

[calcPoleFigure](SO3Fun.calcPoleFigure_py.html), [SO3FunRBF.radon](SO3FunRBF.radon_py.html), [plotPF](SO3Fun.plotPDF_py.html), [plotIPF](SO3Fun.plotIPDF_py.html)

MATLAB's [SO3FunCBF.radon](SO3FunCBF.radon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L784">source</a></font>
{% endraw %}
