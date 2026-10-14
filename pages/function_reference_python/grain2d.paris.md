---
title: 'grain2d.paris'
sidebar: function_reference_sidebar
permalink: grain2d.paris_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.paris.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

measure how strongly an outline is indented relative to its convex hull

## Syntax

<div class="mx-form" markdown="1">

```python
p = grains.paris()
```

</div>

## Description

Return `200*(perimeter-hullPerimeter)/hullPerimeter`, in percent, for every outline.
Convex outlines give zero; concave outlines give positive values. A hull of zero perimeter
returns zero. Results depend on boundary resolution, so compare consistently sampled outlines.

## See also

[convexity](convexity_py.html), [shapeFactor](shapeFactor_py.html), hullPerimeter

## Signature

<div class="mx-form" markdown="1">

```python
grain2d.paris(self)
```

</div>

## Used on

[HullBasedParameters](HullBasedParameters_py.html), [ShapeParameters](ShapeParameters_py.html)

MATLAB's [grain2d.paris](grain2d.paris.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L183">source</a></font>
{% endraw %}
