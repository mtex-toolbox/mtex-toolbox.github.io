---
title: 'projectIntoFundamentalRegion'
sidebar: function_reference_sidebar
permalink: projectIntoFundamentalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
choose symmetry-equivalent representatives in a fundamental region.

## Syntax

<div class="mx-form" markdown="1">

```python
representatives = projectIntoFundamentalRegion(ori)
```

</div>

## Description

For an MTEX object, projectIntoFundamentalRegion(x, ...) calls x.projectIntoFundamentalRegion(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
projectIntoFundamentalRegion(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.project2FundamentalRegion_py.html) | the map with every orientation replaced by its representative in the fundamental region of its phase (MATLAB's EBSD.project2FundamentalRegion) |
| [orientation](orientation.project2FundamentalRegion_py.html) | the symmetric equivalents in the fundamental region, or those closest to the reference ref (MATLAB's orientation.project2FundamentalRegion, quaternion.project2FundamentalRegion, rotation.project2FundamentalRegion) |
| [vector3d](Miller.project2FundamentalRegion_py.html) | the directions folded into the fundamental sector of their frame, with antipodal=True into that of the Laue group |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [MisorientationTheory](MisorientationTheory_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
