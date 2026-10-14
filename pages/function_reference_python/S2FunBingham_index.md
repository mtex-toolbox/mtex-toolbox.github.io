---
title: 'The class S2FunBingham'
sidebar: function_reference_sidebar
permalink: S2FunBingham_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunBingham_index.html
status: Reference
---
{% raw %}
the Bingham distribution on the sphere: the density exp(v' a diag(Z) a' v) of the axes v, with
three shape parameters Z and three orthonormal principal axes a, symmetrised over a frame

## Syntax

```python
S2FunBingham(Z)                       the coordinate axes
S2FunBingham(Z, a)                    the axes as directions or a 3x3 matrix
S2FunBingham.fit(v)                   the fit to directions
```

## Members

| | |
|---|---|
| [a](S2FunBingham.a_py.html) | the principal axes as directions, the modal axis a[2], as MATLAB's a |
| [bandwidth](S2FunBingham.bandwidth_py.html) | the bandwidth of the harmonic expansion, the preference maxS2Bandwidth |
| [CS](S2FunBingham.CS_py.html) | the frame the distribution lives in, its symmetry |
| [eval](S2FunBingham.eval_py.html) | the values of the density at directions, the mean over the symmetric copies of its axes |
| [fit](S2FunBingham.fit_py.html) | the Bingham distribution fitted to directions or axes, with the confidence ellipse of its modal axis |
| [mean](S2FunBingham.mean_py.html) | the mean value over the sphere, one: the distribution is normalised |
| [rotate](S2FunBingham.rotate_py.html) | the distribution turned by a rotation, its axes and its frame |
| [S2FunBingham](S2FunBingham.S2FunBingham_py.html) | the Bingham distribution on the sphere: the density exp(v' a diag(Z) a' v) of the axes v, with three shape parameters Z and three orthonormal principal axes a, symmetrised over a frame |
| [textureIndex](S2FunBingham.textureIndex_py.html) | the texture index of a function on SO(3) or on the sphere, the squared L2 norm of its harmonic expansion |

## Used on

[S2Bingham](S2Bingham_py.html)

MATLAB's [S2FunBingham_index](S2FunBingham_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L431">source</a></font>
{% endraw %}
