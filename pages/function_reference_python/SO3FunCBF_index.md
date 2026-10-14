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
a fibre ODF, a sum over fibres h || r of an S2 kernel psi of the angle between g h and r, with
weights normalised to a mean of one by default

```python
SO3FunCBF(h, r, weights, psi)
SO3FunCBF(f, halfwidth=10*degree)      from a fibre f
```

## Members

| | |
|---|---|
| [abs](SO3FunCBF.abs_py.html) | the absolute value of the function, pointwise, as a function handle |
| [bandwidth](SO3FunCBF.bandwidth_py.html) | the harmonic bandwidth of the S2 kernel |
| [calcError](SO3FunCBF.calcError_py.html) | the distance of two SO(3) functions on the equispaced grid of the resolution: 'l1' (the default, as MATLAB's) is half the mean absolute difference, for densities the fraction of the volume that would have to move to turn one into the other |
| [conv](SO3FunCBF.conv_py.html) | the convolution with a kernel psi, through the harmonic expansion |
| [discreteSample](SO3FunCBF.discreteSample_py.html) | the nodes of a grid drawn with probability proportional to f, moved by a random rotation within the grid resolution and by a random element of each group |
| [eval](SO3FunCBF.eval_py.html) | the values at rotations or orientations, the kernel sum over the fibres and their symmetric equivalents |
| [exp](SO3FunCBF.exp_py.html) | the exponential of the function, pointwise, as a function handle |
| [frameA](SO3FunCBF.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3FunCBF.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [grad](SO3FunCBF.grad_py.html) | the gradient: psi'(t) (g h x r) on the left, psi'(t) (h x g^-1 r) on the right, over every pair |
| [log](SO3FunCBF.log_py.html) | the logarithm of the function, pointwise, as a function handle |
| [mean](SO3FunCBF.mean_py.html) | the mean of the function over SO(3), the sum of the weights times the kernel's mean |
| [norm](SO3FunCBF.norm_py.html) | the L2 norm of the function, from its harmonic expansion |
| [radon](SO3FunCBF.radon_py.html) | the Radon transform through the harmonic expansion of the bandwidth: with h the pole figure, with r the inverse pole figure, with both the values |
| [rotate](SO3FunCBF.rotate_py.html) | the function rotated by r on the left, the specimen side, or with side='right' on the crystal side |
| [SO3FunCBF](SO3FunCBF.SO3FunCBF_py.html) | a fibre ODF, a sum over fibres h \|\| r of an S2 kernel psi of the angle between g h and r, with weights normalised to a mean of one by default |
| [sqrt](SO3FunCBF.sqrt_py.html) | the square root of the function, pointwise, as a function handle |
| [textureIndex](SO3FunCBF.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |
| [times](SO3FunCBF.times_py.html) |  |
| [uminus](SO3FunCBF.uminus_py.html) |  |

## Used on

[SO3FunDefinition](SO3FunDefinition_py.html)

MATLAB's [SO3FunCBF_index](SO3FunCBF_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L498">source</a></font>
{% endraw %}
