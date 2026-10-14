---
title: 'radon'
sidebar: function_reference_sidebar
permalink: radon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
apply an orientation Radon transform or a spherical Funk transform.

## Syntax

<div class="mx-form" markdown="1">

```python
poleDensity = radon(odf, h)
```

</div>

## Description

For an MTEX object, radon(x, ...) calls x.radon(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
radon(x, *args, **kwargs)
```

</div>

## Methods it calls

| [fibreVonMisesFisherKernel](fibreVonMisesFisherKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |
| [S2FunHarmonic](S2FunHarmonic.radon_py.html) | the Funk transform, the mean over the great circle perpendicular to every direction |
| [S2Kernel](S2Kernel.radon_py.html) | the Funk transform: A_n P_n(0) |
| [SO3AbelPoissonKernel](SO3AbelPoissonKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |
| [SO3BumpKernel](SO3BumpKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |
| [SO3DeLaValleePoussinKernel](SO3DeLaValleePoussinKernel.radon_py.html) | the Radon transform: the de la Vallee Poussin kernel on the sphere of the same kappa |
| [SO3DirichletKernel](SO3DirichletKernel.radon_py.html) | the Radon transform: the Dirichlet kernel on the sphere of the same degree |
| [SO3FunBingham](SO3FunBingham.radon_py.html) | the Radon transform of a Bingham distribution: its pole figure, in closed form, its inverse pole figure, or their values |
| [SO3FunCBF](SO3FunCBF.radon_py.html) | the Radon transform of a fibre ODF: the pole figure of a crystal direction, the inverse pole figure of a specimen direction, or the pole density of both |
| [SO3FunComposition](SO3FunComposition.radon_py.html) | the Radon transform of a function on SO(3): its pole figures, inverse pole figures or the values of either, through the harmonic form of the bandwidth |
| [SO3FunHarmonic](SO3FunHarmonic.radon_py.html) | the Radon transform of a function on SO(3): its pole figures, inverse pole figures, or their values (MATLAB's radon, calcPDF and calcIPDF) |
| [SO3FunRBF](SO3FunRBF.radon_py.html) | the Radon transform of a kernel sum: the pole figure of a crystal direction, the inverse pole figure of a specimen direction, or the pole density of both |
| [SO3Kernel](SO3Kernel.radon_py.html) | the Radon transform is the S2 kernel with the same coefficients |
| [SO3SquareSingularityKernel](SO3SquareSingularityKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |
| [SO3vonMisesFisherKernel](SO3vonMisesFisherKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |

## Used on

[ODFInversePoleFigure](ODFInversePoleFigure_py.html), [ODFPoleFigure](ODFPoleFigure_py.html), [S2FunRadon](S2FunRadon_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
