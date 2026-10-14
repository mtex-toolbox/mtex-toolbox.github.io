---
title: 'orientation.byMiller'
sidebar: function_reference_sidebar
permalink: orientation.byMiller_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.byMiller.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientation that takes the crystal plane hkl to z and the crystal direction uvw to x;
of uvw the symmetric equivalent closest to perpendicular to hkl is used

## Syntax

```python
orientation.byMiller(Miller(1, 1, 0, cs), Miller(0, 0, 1, cs, 'uvw'))
orientation.byMiller([1, 1, 0], [0, 0, 1], cs)
```

## Signature

```python
orientation.byMiller(hkl, uvw, *frames)
```

## Used on

[OrientationDefinition](OrientationDefinition_py.html), [ODFModeling](ODFModeling_py.html), [RadialODFs](RadialODFs_py.html)

MATLAB's [orientation.byMiller](orientation.byMiller.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L656">source</a></font>
{% endraw %}
