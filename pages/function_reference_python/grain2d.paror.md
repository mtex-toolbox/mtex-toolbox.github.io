---
title: 'grain2d.paror'
sidebar: function_reference_sidebar
permalink: grain2d.paror_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.paror.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the cumulative particle projection function of the outlines (Panozzo 1983); MATLAB's
grain2d.paror

## Syntax

<div class="mx-form" markdown="1">

```python
cumpl = grains.paror()
```

Every degree from 0 to 180.

</div>

<div class="mx-form" markdown="1">

```python
cumpl = paror(grains, np.linspace(0, np.pi, 91))
```

Every second degree.

</div>

## Description

For every direction the width of the convex hull of each outline seen from it, summed over
the outlines and normalised by its largest value. The hulls are taken once for all the
directions.

## Input

| `grains` | grain2d, or any set of outlines |

## Keywords

| keyword | default | description |
|---|---|---|
| `omega` | `None` | the angles of the directions to the x axis, by default 0 to 180 degree in steps of one degree |

## Output

| `cumpl` | array, one value per angle |

## References

- R. Panozzo, Two-dimensional analysis of shape fabric using projections of digitized lines in a plane, Tectonophysics 95 (1983) 279-294

## See also

[grainBoundary.surfor](grainBoundary.surfor_py.html), [grain2d.caliper](grain2d.caliper_py.html), [ShapeParameters](ShapeParameters_py.html)

MATLAB's [grain2d.paror](grain2d.paror.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L295">source</a></font>
{% endraw %}
