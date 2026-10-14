---
title: 'The class SO3FunCBF'
sidebar: function_reference_sidebar
permalink: SO3FunCBF_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunCBF_index.html
status: Reference
---
{% raw %}
a fibre ODF: a sum over fibres h || r of a kernel on the sphere of the angle between g h and r

## Syntax

The fibre h || r, a 10 degree kernel:

```python
SO3F = SO3FunCBF(h, r)
```

Several fibres, weighted, the kernel psi:

```python
SO3F = SO3FunCBF(h, r, weights, psi)
```

From a fibre f:

```python
SO3F = SO3FunCBF(f, halfwidth=10*degree)
```

The function of the orientation g is sum_i w_i psi(g h_i . r_i), every fibre taken with all
its symmetrically equivalent fibres; it is constant along each fibre. The crystal frame is
that of h, the specimen frame that of r or SS. The weights default to equal ones giving a
mean of one. fibreODF builds one with the weights normalised.

## Input

| | |
|---|---|
| `h` | Miller or vector3d, the crystal directions, or a fibre |
| `r` | vector3d, the specimen directions, one per crystal direction |
| `weights` | one weight per fibre; by default a mean of one |
| `psi` | S2Kernel; by default the de la Vallee Poussin kernel |

## Output

| | |
|---|---|
| `SO3F` | SO3FunCBF |

## Keywords

| | default | |
|---|---|---|
| `SS` |  | the specimen frame, when r has none |
| `halfwidth` |  | the halfwidth of the default kernel, 10 degree unless given |

## See also

[fibreODF](fibreODF_py.html), [fibre](fibre_index_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [SO3FunCBF.radon](SO3FunCBF.radon_py.html), [FibreODFs](FibreODFs_py.html)

## Members

| | |
|---|---|
| [abs](SO3FunCBF.abs_py.html) | the absolute value of the function, pointwise, as a function handle |
| [bandwidth](SO3FunCBF.bandwidth_py.html) | the harmonic bandwidth of the S2 kernel |
| [calcError](SO3FunCBF.calcError_py.html) | the distance between two orientation density functions, or the error of an ODF against pole figures |
| [conv](SO3FunCBF.conv_py.html) | the convolution with a kernel psi, through the harmonic expansion |
| [discreteSample](SO3FunCBF.discreteSample_py.html) | a random sample of n orientations drawn from an orientation density, of directions from a density on the sphere, of numbers from a density on an interval, or n random members of a list |
| [eval](SO3FunCBF.eval_py.html) | the values at rotations or orientations, the kernel sum over the fibres and their symmetric equivalents |
| [exp](SO3FunCBF.exp_py.html) | the exponential of the function, pointwise, as a function handle |
| [frameA](SO3FunCBF.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3FunCBF.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [grad](SO3FunCBF.grad_py.html) | the gradient: psi'(t) (g h x r) on the left, psi'(t) (h x g^-1 r) on the right, over every pair |
| [log](SO3FunCBF.log_py.html) | the logarithm of the function, pointwise, as a function handle |
| [mean](SO3FunCBF.mean_py.html) | the mean of the function over SO(3), the sum of the weights times the kernel's mean |
| [norm](SO3FunCBF.norm_py.html) | the L2 norm of the function, from its harmonic expansion |
| [radon](SO3FunCBF.radon_py.html) | the Radon transform of a fibre ODF: the pole figure of a crystal direction, the inverse pole figure of a specimen direction, or the pole density of both |
| [rotate](SO3FunCBF.rotate_py.html) | the function rotated by r on the left, the specimen side, or with side='right' on the crystal side |
| [SO3FunCBF](SO3FunCBF.SO3FunCBF_py.html) | a fibre ODF: a sum over fibres h \|\| r of a kernel on the sphere of the angle between g h and r |
| [sqrt](SO3FunCBF.sqrt_py.html) | the square root of the function, pointwise, as a function handle |
| [textureIndex](SO3FunCBF.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |
| [times](SO3FunCBF.times_py.html) |  |
| [uminus](SO3FunCBF.uminus_py.html) |  |

## Used on

[SO3FunDefinition](SO3FunDefinition_py.html)

MATLAB's [SO3FunCBF_index](SO3FunCBF_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L539">source</a></font>
{% endraw %}
