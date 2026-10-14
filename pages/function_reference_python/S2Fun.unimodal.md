---
title: 'S2Fun.unimodal'
sidebar: function_reference_sidebar
permalink: S2Fun.unimodal_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun.unimodal.html
status: Reference
---
{% raw %}
A method of [S2Fun](S2Fun_index_py.html).

a unimodal function on the sphere, a radial kernel about one direction, as a harmonic
expansion

## Syntax

<div class="mx-form" markdown="1">

```python
sF = S2Fun.unimodal()
```

About the north pole, halfwidth 25 degree.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2Fun.unimodal(halfwidth=10*degree)
```

Another halfwidth.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2Fun.unimodal(v, psi)
```

The kernel psi about the direction v.

</div>

## Description

The function is the kernel psi, by default the de la Vallee Poussin kernel of the
halfwidth, turned from the north pole to v.

## Input

| `v` | vector3d, the direction of the maximum, by default the north pole |
| `psi` | S2Kernel, by default the de la Vallee Poussin kernel of the halfwidth |

## Keywords

| keyword | default | description |
|---|---|---|
| `halfwidth` | `25*degree` | the halfwidth of the default de la Vallee Poussin kernel |

## Output

| `sF` | S2FunHarmonic |

## See also

[S2DeLaValleePoussinKernel](S2DeLaValleePoussinKernel_index_py.html), [S2Fun.smiley](S2Fun.smiley_py.html), [S2Kernels](S2Kernels_py.html)

MATLAB's [S2Fun.unimodal](S2Fun.unimodal.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funclass.py#L75">source</a></font>
{% endraw %}
