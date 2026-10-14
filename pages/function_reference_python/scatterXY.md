---
title: 'scatterXY'
sidebar: function_reference_sidebar
permalink: scatterXY_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
markers at the coordinates of the current map, MATLAB's scatter of two coordinate lists

## Syntax

<div class="mx-form" markdown="1">

```python
plot(ebsd)
```

</div>

<div class="mx-form" markdown="1">

```python
scatter([1000, 2000], [1000, 1500], 40, 'r', filled=True)
```

Filled red markers of area 40.

</div>

<div class="mx-form" markdown="1">

```python
scatter(x, y, color='k')
```

Open black markers.

</div>

## Description

The positional arguments after the coordinates are the marker area in points squared
(36 by default) and the colour, a string; positions that are NaN are left out. The points
are placed on the screen as the map is; without a map they go into the current axes. The
other keywords are matplotlib's scatter's. MATLAB's flag 'filled' is the keyword here.

## Input

| `x, y` | the coordinates of the points |

## Keywords

| keyword | default | description |
|---|---|---|
| `filled` | `False` | filled markers instead of open ones |

## Output

| `h` | the matplotlib PathCollection |

## See also

[line](rotation.line_py.html), [text](EBSD.text_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L1016">source</a></font>
{% endraw %}
