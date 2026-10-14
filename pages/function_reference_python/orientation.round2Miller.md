---
title: 'orientation.round2Miller'
sidebar: function_reference_sidebar
permalink: orientation.round2Miller_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.round2Miller.html
status: Reference
---
{% raw %}
hkl, uvw = round2Miller(ori): the plane and the direction of the crystal along the
specimen z and x, as their nearest low indices; n1, n2, d1, d2 = round2Miller(mori): the
parallel planes and the parallel directions of the two crystals the misorientation
relates, the smallest indices that fit best, penalty weighing the size of the indices

## Syntax

```python
round2Miller(mori, penalty=0.002, maxIndex=None, nextFit=1)
```

## Used on

[OrientationStandard](OrientationStandard_py.html), [TwinningBoundaries](TwinningBoundaries_py.html), [Twinning](Twinning_py.html)

MATLAB's [orientation.round2Miller](orientation.round2Miller.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/parent2child.py#L504">source</a></font>
{% endraw %}
