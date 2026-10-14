---
title: 'sphericalProjection.gridLines'
sidebar: function_reference_sidebar
permalink: sphericalProjection.gridLines_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [sphericalProjection](sphericalProjection_index_py.html).

the meridians and small circles of the convention at a spacing, clipped to the region:
plane curves with NaN where they leave it

## Syntax

<div class="mx-form" markdown="1">

```python
lines = proj.gridLines()
```

Every 30 degree.

</div>

<div class="mx-form" markdown="1">

```python
lines = proj.gridLines(step=15*degree)
```

Every 15 degree.

</div>

## Description

The step is rounded to a divisor of 180 degree. The small circles come first, about the
pole of the plotting convention, then the meridians through it.

## Keywords

| keyword | default | description |
|---|---|---|
| `step` | `30*degree` | the spacing of the small circles and of the meridians |

## Output

| `lines` | list of (x, y) pairs of arrays |

## See also

[sphereGridLines](sphereGridLines_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L227">source</a></font>
{% endraw %}
