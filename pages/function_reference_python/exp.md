---
title: 'exp'
sidebar: function_reference_sidebar
permalink: exp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
take the pointwise exponential or the exponential map of an object.

## Syntax

<div class="mx-form" markdown="1">

```python
result = exp(x)
```

</div>

## Description

For an MTEX object, exp(x, ...) calls x.exp(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.exp.

## Signature

<div class="mx-form" markdown="1">

```python
exp(x, *args, **kwargs)
```

</div>

## Methods it calls

| [orientation](orientation.exp_py.html) | the rotation a tangent vector at this reference points to, exp(ori, v) of MATLAB |
| [S1FunHarmonic](S1Fun.exp_py.html) | the pointwise exponential, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [S2FunHandle](S2FunHandle.exp_py.html) | the pointwise exponential, a handle evaluated when asked |
| [S2FunHarmonic](S2FunHarmonic.exp_py.html) | the exponential of the function, expanded by quadrature, or at the bandwidth given |
| [SO3FunCBF](SO3FunCBF.exp_py.html) | the exponential of the function, pointwise, as a function handle |
| [SO3FunHarmonic](SO3FunHarmonic.exp_py.html) | the exponential of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [SO3FunRBF](SO3FunRBF.exp_py.html) | the exponential of the function, pointwise, as a function handle |
| [SO3TangentVector](SO3TangentVector.exp_py.html) | return the rotations reached by the tangent vectors from their references |
| [spinTensor](spinTensor.exp_py.html) | the rotation a spin tensor generates, the exponential of its axial vector, or the orientation a spin at a reference orientation leads to |
| [vector3d](vector3d.exp_py.html) | the rotation vector to its rotation: at the identity, or at a reference as a tangent vector |

## Used on

[RotationSpinTensor](RotationSpinTensor_py.html), [RotationTangentSpace](RotationTangentSpace_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
