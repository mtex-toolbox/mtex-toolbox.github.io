---
title: 'SO3Fun.centerSpecimen'
sidebar: function_reference_sidebar
permalink: SO3Fun.centerSpecimen_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.centerSpecimen.html
status: Reference
---
{% raw %}
two perpendicular twofold axes of an assumed orthotropic texture, found and rotated onto
the nearest specimen axes (MATLAB centerSpecimen): the mismatch of a candidate axis is the
norm of the difference between the harmonic series of the density and the series turned
by 180 degrees about it; the first axis is searched on a cap about v0, the second on the
fan perpendicular to it. Returns the centred series, the correction applied, and the axes

## Syntax

```python
centerSpecimen(odf, v0=None, *args, delta=45*degree, bandwidth=16, verbose=False)
```

## Used on

[DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html)

MATLAB's [SO3Fun.centerSpecimen](SO3Fun.centerSpecimen.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L895">source</a></font>
{% endraw %}
