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

About the north pole, halfwidth 25 degree:

```python
sF = S2Fun.unimodal()
```

Another halfwidth:

```python
sF = S2Fun.unimodal(halfwidth=10*degree)
```

The kernel psi about the direction v:

```python
sF = S2Fun.unimodal(v, psi=psi)
```

The function is the de la Vallee Poussin kernel of the halfwidth, or the kernel psi, turned
from the north pole to v. MATLAB's S2Fun.unimodal(v, psi) takes the kernel positionally;
here it is the keyword psi.

## Input

| | |
|---|---|
| `v` | vector3d, the direction of the maximum, by default the north pole |

## Output

| | |
|---|---|
| `sF` | S2FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `halfwidth` | `25*degree` | the halfwidth of the de la Vallee Poussin kernel |
| `psi` | `None` | S2Kernel, the kernel instead |

## See also

[S2DeLaValleePoussinKernel](S2DeLaValleePoussinKernel_index_py.html), [S2Fun.smiley](S2Fun.smiley_py.html), [S2Kernels](S2Kernels_py.html)

MATLAB's [S2Fun.unimodal](S2Fun.unimodal.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funclass.py#L75">source</a></font>
{% endraw %}
