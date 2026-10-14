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

Lines every 15 degree:

```python
L = regionLines(oR)
```

Fewer lines:

```python
L = regionLines(oR, step=30*degree)
```

## Input

| | |
|---|---|
| `oR` | orientationRegion |

## Output

| | |
|---|---|
| `L` | list of (k, 3) arrays, the lines of sphereGridLines pushed out to the surface, NaN outside the region's sector |

## Keywords

| | default | |
|---|---|---|
| `step` | `15*degree` | the spacing of the parallels and meridians |

## See also

[regionSurface](regionSurface_py.html), [sphereGridLines](sphereGridLines_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L187">source</a></font>
{% endraw %}
