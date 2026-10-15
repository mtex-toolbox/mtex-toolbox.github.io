---
title: 'sphericalProjection.boundary'
sidebar: function_reference_sidebar
permalink: sphericalProjection.boundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [sphericalProjection](sphericalProjection_index_py.html).

the boundary of the region as plane curves, one (x, y) pair per arc; a whole
hemisphere has no boundary of its own and gets the horizon

## Syntax

<div class="mx-form" markdown="1">

```python
b = proj.boundary()
```

Points every half degree.

</div>

<div class="mx-form" markdown="1">

```python
b = proj.boundary(resolution=2*degree)
```

Coarser arcs.

</div>

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `0.5*degree` | the spacing of the points along an arc |

## Output

| `b` | list of (x, y) pairs of arrays, one per arc of the region |

## See also

[sphericalProjection.bounds](sphericalProjection.bounds_py.html), [sphericalRegion.boundary](sphericalRegion.boundary_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical/__init__.py#L204">source</a></font>
{% endraw %}
