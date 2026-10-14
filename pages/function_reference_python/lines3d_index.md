---
title: 'The class lines3d'
sidebar: function_reference_sidebar
permalink: lines3d_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
line segments (k, 2, 3), a colour per segment (k, 3) or one for all, their width

## Input

| `segments` | array of shape (n, 2, 3), endpoint coordinates for every segment |
| `color` | one RGB triplet or one per segment |
| `lineWidth` | line width; default 1 |
| `alpha` | opacity from 0 to 1; default 1 |

## Members

| [bounds](lines3d.bounds_py.html) | the corners (lo, hi) of the box around the segments |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/scene3d.py#L143">source</a></font>
{% endraw %}
