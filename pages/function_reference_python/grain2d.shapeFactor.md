---
title: 'grain2d.shapeFactor'
sidebar: function_reference_sidebar
permalink: grain2d.shapeFactor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.shapeFactor.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

compare an outline's perimeter with that of a circle of equal area

## Syntax

<div class="mx-form" markdown="1">

```python
factor = grains.shapeFactor()
```

</div>

## Description

Return `perimeter/(2*sqrt(pi*area))`, one value per outline. A circle gives one; elongation
or an irregular boundary increases the value. Areas subtract holes and perimeter includes
the outline's loops. The ratio is dimensionless and sensitive to boundary resolution.

## See also

[aspectRatio](aspectRatio_py.html), [convexity](convexity_py.html), [grain2d.equivalentRadius](grain2d.equivalentRadius_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
grain2d.shapeFactor(self)
```

</div>

## Used on

[ShapeParameters](ShapeParameters_py.html)

MATLAB's [grain2d.shapeFactor](grain2d.shapeFactor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L199">source</a></font>
{% endraw %}
