---
title: 'WignerD'
sidebar: function_reference_sidebar
permalink: WignerD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: WignerD.html
status: Reference
---
{% raw %}
the Wigner-D matrices of rotations, or the Wigner-d matrices of a second Euler angle, of one
degree or of all degrees up to a bandwidth

## Syntax

The (2l+1) x (2l+1) matrix of degree l:

```python
Dl = WignerD(g, l)
```

L2 normalised, times sqrt(2l + 1):

```python
Dl = WignerD(g, l, normalize=True)
```

The list of the matrices of degree 0 to L:

```python
D = WignerD(g, bandwidth=L)
```

The real Wigner-d matrix at the second Euler angle:

```python
dl = WignerD(beta, l)
```

The mean over the symmetries of a frame:

```python
P = WignerD(cs, l)
```

The matrices are MTEX's Wigner functions, the basis the public coefficients fhat of an
SO3FunHarmonic are taken in: with normalize=True, f(g) = sum fhat_n^{kl} D_n^{kl}(g). A
list of rotations gives the matrices stacked in front, (..., 2l+1, 2l+1). For a frame or a
point group the matrices are averaged over its rotations, the projection onto the functions
invariant under the group; these are in the internal basis of docs/design/harmonics.md
and normalize does not apply to them. MATLAB's kernel option is not there.

## Input

| | |
|---|---|
| `g` | rotation, orientation or quaternion |
| `beta` | the second Euler angle in [0, pi] |
| `cs` | crystalFrame or point group |
| `degree` | the degree l of a single matrix |

## Output

| | |
|---|---|
| `Dl` | (..., 2l+1, 2l+1) complex array |
| `D` | list of the matrices of degree 0 to L |
| `dl` | (2l+1) x (2l+1) real array |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | all degrees up to this one, instead of a single degree |
| `normalize` | `False` | multiply the matrix of degree n by sqrt(2n + 1) |
| `dtype` | `None` | the NumPy type of the matrices |

## See also

[sphericalY](sphericalY_py.html), [SO3FunHarmonic](SO3FunHarmonic_index_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html)

## Used on

[WignerFunctions](WignerFunctions_py.html)

MATLAB's [WignerD](WignerD.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/harmonics.py#L230">source</a></font>
{% endraw %}
