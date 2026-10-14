---
title: 'SO3FunRBF.SO3FunRBF'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.SO3FunRBF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.SO3FunRBF.html
status: Reference
---
{% raw %}
a function on SO(3) as a sum of radial kernels at centre orientations, plus a constant: a
radial basis function ODF

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunRBF(ori, psi, weights)
```

Kernels psi at the orientations ori.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunRBF(ori, psi, weights, c0)
```

Plus the constant c0.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunRBF(ori)
```

10 degree kernels, the weights giving a mean of one.

</div>

## Description

The function is c0 + sum_i w_i psi(angle(g, ori_i)), every centre taken with all its
symmetrically equivalent orientations, in the crystal and specimen frames of the centres.
unimodalODF and calcDensity build one, SO3FunRBF.interpolate fits one through values.

Scaling, adding a constant, adding another kernel sum of the same kernel, rotation,
inversion and convolution with a kernel keep the function a kernel sum. Its harmonic
form, through which it is evaluated, is computed once and kept until a centre, the
kernel, the weights or the constant are set.

MATLAB's SO3FunRBF(F), approximating another SO3Fun, is not ported.

## Input

| `center` | orientation, the centres of the kernels |
| `psi` | SO3Kernel; by default the de la Vallee Poussin kernel of halfwidth 10 degree |
| `weights` | one weight per centre; by default equal, giving a mean of one |
| `c0` | the constant added |

## Output

| `SO3F` | SO3FunRBF |

## Properties

| `center` | kernel centres as orientations |
| `psi` | radial kernel shared by the centres |
| `weights` | coefficients multiplying the individual kernel contributions |
| `c0` | constant contribution to the function |
| `CS, SS` | crystal and specimen reference frames |
| `antipodal` | whether grain exchange symmetry is used |

## See also

[unimodalODF](unimodalODF_py.html), [SO3FunCBF](SO3FunCBF_index_py.html), [SO3FunRBF.interpolate](SO3FunRBF.interpolate_py.html), [calcDensity](calcDensity_py.html), [SO3FunRBF.radon](SO3FunRBF.radon_py.html), [RadialODFs](RadialODFs_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3FunRBF(center, psi=None, weights=None, c0=0.0)
```

</div>

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3FunRBF.SO3FunRBF](SO3FunRBF.SO3FunRBF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L158">source</a></font>
{% endraw %}
