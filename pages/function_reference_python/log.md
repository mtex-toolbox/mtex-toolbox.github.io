---
title: 'log'
sidebar: function_reference_sidebar
permalink: log_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
take a pointwise logarithm or map rotations to tangent vectors.

## Syntax

<div class="mx-form" markdown="1">

```python
result = log(x)
```

</div>

## Description

For an MTEX object, log(x, ...) calls x.log(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.log.

## Signature

<div class="mx-form" markdown="1">

```python
log(x, *args, **kwargs)
```

</div>

## Methods it calls

| [orientation](orientation.log_py.html) | the logarithm of an orientation, the tangent vector at a reference pointing to it |
| [quaternion](quaternion.log_py.html) | the tangent vector pointing from the reference, the identity by default, to this rotation |
| [S1FunHarmonic](S1Fun.log_py.html) | the pointwise logarithm, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [S2FunHandle](S2FunHandle.log_py.html) | the pointwise logarithm, a handle evaluated when asked |
| [S2FunHarmonic](S2FunHarmonic.log_py.html) | the logarithm of the function, expanded by quadrature, or at the bandwidth given |
| [SO3FunCBF](SO3FunCBF.log_py.html) | the logarithm of the function, pointwise, as a function handle |
| [SO3FunHarmonic](SO3FunHarmonic.log_py.html) | the logarithm of the function, by quadrature at twice the bandwidth, or at the bandwidth given |
| [SO3FunRBF](SO3FunRBF.log_py.html) | the logarithm of the function, pointwise, as a function handle |

## Used on

[EBSDOrientationPlots](EBSDOrientationPlots_py.html), [GrainReconstructionAdvanced](GrainReconstructionAdvanced_py.html), [RotationSpinTensor](RotationSpinTensor_py.html), [RotationTangentSpace](RotationTangentSpace_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
