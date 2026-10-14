---
title: 'regionLines'
sidebar: function_reference_sidebar
permalink: regionLines_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the parallels and meridians drawn on the surface, which is how a viewer reads its shape

## Syntax

<div class="mx-form" markdown="1">

```python
L = regionLines(oR)
```

Lines every 15 degree.

</div>

<div class="mx-form" markdown="1">

```python
L = regionLines(oR, step=30*degree)
```

Fewer lines.

</div>

## Input

| `oR` | orientationRegion |

## Keywords

| keyword | default | description |
|---|---|---|
| `step` | `15*degree` | the spacing of the parallels and meridians |

## Output

| `L` | list of (k, 3) arrays, the lines of sphereGridLines pushed out to the surface, NaN outside the region's sector |

## See also

[regionSurface](regionSurface_py.html), [sphereGridLines](sphereGridLines_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L187">source</a></font>
{% endraw %}
