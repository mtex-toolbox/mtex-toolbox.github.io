---
title: 'curvature'
sidebar: function_reference_sidebar
permalink: curvature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
calculate the lattice curvature tensor from spatial orientation derivatives.

## Syntax

<div class="mx-form" markdown="1">

```python
kappa = curvature(ebsd)
```

</div>

## Description

For an MTEX object, curvature(x, ...) calls x.curvature(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
curvature(x, *args, **kwargs)
```

</div>

## Methods it calls

| [dislocationDensityTensor](dislocationDensityTensor.curvature_py.html) | recover lattice curvature from a Nye dislocation density tensor |
| [EBSD](EBSD.curvature_py.html) | the curvature tensor of every pixel, kappa = d omega / d x, in the specimen frame per scan unit |
| [EBSD3](EBSD3square.curvature_py.html) | the curvature tensor of every voxel |
| [grainBoundary](grainBoundary.curvature_py.html) | the signed curvature of every segment: the Menger curvature through the midpoints of a segment and its two neighbours along the chain, smoothed by a binomial filter along it |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
