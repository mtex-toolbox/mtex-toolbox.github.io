---
title: 'sphericalProjection.bounds'
sidebar: function_reference_sidebar
permalink: sphericalProjection.bounds_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [sphericalProjection](sphericalProjection_index_py.html).

the bounding box of the drawn region, from its boundary, as (xmin, xmax, ymin, ymax)

## Syntax

<div class="mx-form" markdown="1">

```python
xmin, xmax, ymin, ymax = proj.bounds()
```

With a margin of 2 percent.

</div>

<div class="mx-form" markdown="1">

```python
xmin, xmax, ymin, ymax = proj.bounds(margin=0)
```

Tight about the boundary.

</div>

## Keywords

| keyword | default | description |
|---|---|---|
| `margin` | `0.02` | the widening on every side, a fraction of the shorter side of the box |

## Output

| `xmin, xmax, ymin, ymax` | floats |

## See also

[sphericalProjection.boundary](sphericalProjection.boundary_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical/__init__.py#L253">source</a></font>
{% endraw %}
