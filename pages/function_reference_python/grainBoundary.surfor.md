---
title: 'grainBoundary.surfor'
sidebar: function_reference_sidebar
permalink: grainBoundary.surfor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.surfor.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the cumulative projection length of the boundary segments (Panozzo 1984); MATLAB's
grainBoundary.surfor

## Syntax

<div class="mx-form" markdown="1">

```python
lp = gB.surfor()
```

Every degree from 0 to 180.

</div>

<div class="mx-form" markdown="1">

```python
lp = surfor(gB, np.linspace(0, np.pi, 91))
```

Every second degree.

</div>

<div class="mx-form" markdown="1">

```python
lp = surfor(grains)
```

The boundary of the grains.

</div>

## Description

For every direction the lengths of the segments projected onto it, summed and normalised by
the largest value. It makes sense only for sufficiently smooth boundaries. MATLAB returns
the angles as a second output and takes their step as 'stepwidth'; here the angles are
given.

## Input

| `gB` | grainBoundary, or grain2d for its boundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `omega` | `None` | the angles of the directions to the x axis, by default 0 to 180 degree in steps of one degree |

## Output

| `lp` | array, one value per angle |

## References

- R. Panozzo, Two-dimensional strain from the orientation of lines in a plane, Journal of Structural Geology 6 (1984) 215-221

## See also

[grain2d.paror](grain2d.paror_py.html), [grainBoundary.characteristicShape](grainBoundary.characteristicShape_py.html), [ShapeParameters](ShapeParameters_py.html)

MATLAB's [grainBoundary.surfor](grainBoundary.surfor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L339">source</a></font>
{% endraw %}
