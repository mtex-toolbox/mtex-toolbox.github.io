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
projectIntoFundamentalRegion(x, ...) is x.projectIntoFundamentalRegion(...), the method of the object passed

## Syntax

```python
projectIntoFundamentalRegion(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [EBSD](EBSD.project2FundamentalRegion_py.html) | the map with every orientation replaced by its representative in the fundamental region of its phase (MATLAB's EBSD.project2FundamentalRegion) |
| [orientation](orientation.project2FundamentalRegion_py.html) | the symmetric equivalents in the fundamental region, or those closest to the reference ref |
| [vector3d](Miller.project2FundamentalRegion_py.html) | the directions folded into the fundamental sector of their frame, with antipodal=True into that of the Laue group |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [MisorientationTheory](MisorientationTheory_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
