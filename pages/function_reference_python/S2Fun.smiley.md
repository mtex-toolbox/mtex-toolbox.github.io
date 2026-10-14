---
title: 'S2Fun.smiley'
sidebar: function_reference_sidebar
permalink: S2Fun.smiley_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun.smiley.html
status: Reference
---
{% raw %}
A method of [S2Fun](S2Fun_index_py.html).

the smiley test function on the sphere

## Syntax

```python
S2Fun.smiley(v=None, exact=False, even=False, **kwargs)
```

```python
sF = S2Fun.smiley(bandwidth=256)  # its harmonic expansion by quadrature
values = S2Fun.smiley(v)  # its values at the directions v
sF = S2Fun.smiley(exact=True)  # the function itself, as a handle
sF = S2Fun.smiley(even=True)  # the smiley on both hemispheres, an antipodal function
```

## Used on

[ClusterDemo](ClusterDemo_py.html), [ContourPlots](ContourPlots_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunOperations](S2FunOperations_py.html), [S2FunPlotting](S2FunPlotting_py.html), [S2FunSampling](S2FunSampling_py.html), [S2FunSym](S2FunSym_py.html), [S2FunVectorValued](S2FunVectorValued_py.html)

MATLAB's [S2Fun.smiley](S2Fun.smiley.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funclass.py#L41">source</a></font>
{% endraw %}
