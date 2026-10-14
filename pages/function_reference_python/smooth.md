---
title: 'smooth'
sidebar: function_reference_sidebar
permalink: smooth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
smooth sampled orientations, boundaries or harmonic functions.

## Syntax

<div class="mx-form" markdown="1">

```python
smoothed = smooth(x)
```

</div>

## Description

For an MTEX object, smooth(x, ...) calls x.smooth(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
smooth(x, *args, **kwargs)
```

</div>

## Methods it calls

| [boundaryFilter](boundaryFilter.smooth_py.html) | V are the vertices (n, 2) of the network, h the spacing they are sampled at |
| [curvatureFilter](curvatureFilter.smooth_py.html) | the minimiser of \|V - V0\|^2 + alpha \|L V\|^2 over the free vertices, one sparse system |
| [EBSD](EBSD.smooth_py.html) | the map with its orientations denoised, every one replaced by one computed from its neighbours, within the grains where the map knows them and within the phases otherwise |
| [EBSD3](EBSD3.smooth_py.html) | the map with its orientations denoised, every one replaced by one computed from its neighbours, within the grains where the map knows them and within the phases otherwise |
| [huberFilter](huberFilter.smooth_py.html) | the minimiser of \|V - V0\|^2 plus alpha times the Huber penalty of the curvature L V, by reweighting the sparse system until nothing moves, the fixed vertices kept |
| [laplaceFilter](laplaceFilter.smooth_py.html) | the vertices after iter steps of local averaging at the rate lambda_ / 2, the fixed ones kept |
| [S1FunHarmonic](S1Fun.smooth_py.html) | the convolution with a de la Vallee Poussin kernel, 2.9 degree unless a kernel or a halfwidth is given |
| [taubinFilter](taubinFilter.smooth_py.html) | the vertices after iter pairs of a smoothing step lambda_ and an unshrinking step mu, the fixed ones kept |
| [vector3d](vector3d.smooth_py.html) | pcolor(sF), pcolor(v), pcolor(v, data): a coloured surface |

## Used on

[EBSDDenoising](EBSDDenoising_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [GND](GND_py.html), [WBV](WBV_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
