---
title: 'symmetry.WignerD'
sidebar: function_reference_sidebar
permalink: symmetry.WignerD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.WignerD.html
status: Reference
---
{% raw %}
the Wigner-D matrices of rotations, or the Wigner-d matrices of a second Euler angle, of one
degree or of all degrees up to a bandwidth

## Syntax

<div class="mx-form" markdown="1">

```python
Dl = WignerD(g, l)
```

The (2l+1) x (2l+1) matrix of degree l.

</div>

<div class="mx-form" markdown="1">

```python
Dl = WignerD(g, l, normalize=True)
```

L2 normalised, times sqrt(2l + 1).

</div>

<div class="mx-form" markdown="1">

```python
D = WignerD(g, bandwidth=L)
```

The list of the matrices of degree 0 to L.

</div>

<div class="mx-form" markdown="1">

```python
dl = WignerD(beta, l)
```

The real Wigner-d matrix at the second Euler angle.

</div>

<div class="mx-form" markdown="1">

```python
P = WignerD(cs, l)
```

The mean over the symmetries of a frame.

</div>

## Description

The matrices are MTEX's Wigner functions, the basis the coefficients fhat of an
SO3FunHarmonic are taken in: with normalize=True, f(g) = sum fhat_n^{kl} D_n^{kl}(g). A
list of rotations gives the matrices stacked in front, (..., 2l+1, 2l+1).

For a frame or a point group the result is the mean of the matrices over the rotations of
its proper group, the projection onto the functions invariant under the group. MATLAB's
kernel option is not there.

## Input

| `g` | rotation, orientation or quaternion |
| `beta` | the second Euler angle in [0, pi] |
| `cs` | crystalFrame or point group |
| `degree` | the degree l of a single matrix |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | all degrees up to this one, instead of a single degree |
| `normalize` | `False` | multiply the matrix of degree n by sqrt(2n + 1) |
| `dtype` | `None` | the NumPy type of the matrices |

## Output

| `Dl` | (..., 2l+1, 2l+1) complex array |
| `D` | list of the matrices of degree 0 to L |
| `dl` | (2l+1) x (2l+1) real array |

## See also

[sphericalY](sphericalY_py.html), [SO3FunHarmonic](SO3FunHarmonic_index_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html)

## Used on

[WignerFunctions](WignerFunctions_py.html)

MATLAB's [symmetry.WignerD](symmetry.WignerD.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/harmonics.py#L246">source</a></font>
{% endraw %}
