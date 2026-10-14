---
title: 'spatialProfile'
sidebar: function_reference_sidebar
permalink: spatialProfile_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
sample map measurements along a spatial polyline.

## Syntax

<div class="mx-form" markdown="1">

```python
profile, distance = spatialProfile(ebsd, points)
```

</div>

## Description

For an MTEX object, spatialProfile(x, ...) calls x.spatialProfile(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
spatialProfile(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.spatialProfile_py.html) | the measurements along a polyline, in the order they are met, and the distance along the line of each of them |
| [EBSD3](EBSD3.spatialProfile_py.html) | the voxels along a polyline, sampled at the voxel spacing, and their distance along it |

## Used on

[EBSDProfile](EBSDProfile_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
