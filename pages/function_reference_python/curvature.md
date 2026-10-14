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
curvature(x, ...) is x.curvature(...), the method of the object passed

## Syntax

```python
curvature(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [dislocationDensityTensor](dislocationDensityTensor.curvature_py.html) | the curvature tensor of a dislocation density tensor by Nye's relation, kappa = alpha^T - tr(alpha) I / 2 |
| [EBSD](EBSD.curvature_py.html) | the curvature tensor of every pixel, kappa = d omega / d x, in the specimen frame per scan unit |
| [EBSD3](EBSD3square.curvature_py.html) | the curvature tensor of every voxel |
| [grainBoundary](grainBoundary.curvature_py.html) | the signed curvature of every segment: the Menger curvature through the midpoints of a segment and its two neighbours along the chain, smoothed by a binomial filter along it |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
