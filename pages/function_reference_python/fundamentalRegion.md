---
title: 'fundamentalRegion'
sidebar: function_reference_sidebar
permalink: fundamentalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fundamentalRegion.html
status: Reference
---
{% raw %}
return the region representing distinct orientations under the given symmetries.

## Syntax

<div class="mx-form" markdown="1">

```python
region = fundamentalRegion(cs, ss)
```

</div>

## Description

For an MTEX object, fundamentalRegion(x, ...) calls x.fundamentalRegion(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
fundamentalRegion(x, *args, **kwargs)
```

</div>

## Methods it calls

| [orientation](orientation.fundamentalRegion_py.html) | return the region of symmetry-distinct orientations for the input frames |
| [referenceFrame](referenceFrame.fundamentalRegion_py.html) | the fundamental region in orientation space of this group, or of the pair with another frame |
| [symmetry](symmetry.fundamentalRegion_py.html) | the fundamental region of orientations of this group and another one, the Dirichlet domain of the identity |

## Used on

[OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [OrientationVisualization3d](OrientationVisualization3d_py.html), [CSLBoundaries](CSLBoundaries_py.html), [MisorientationGrainExchangeSym](MisorientationGrainExchangeSym_py.html)

MATLAB's [fundamentalRegion](fundamentalRegion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
