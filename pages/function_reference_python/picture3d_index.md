---
title: 'The class picture3d'
sidebar: function_reference_sidebar
permalink: picture3d_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a picture on a rectangle in space: RGBA (rows, cols, 4) in [0, 1] with its first row at
the bottom, and the corners of the rectangle at the bottom left, the bottom right, the top
left and the top right; a two dimensional map drawn in the plane it lies in

## Input

| `rgba` | pixel array of shape (rows, columns, 4) in [0, 1], first row at the bottom |
| `corners` | four Cartesian corners: bottom left, bottom right, top left, top right |

## Members

| [bounds](picture3d.bounds_py.html) | the corners (lo, hi) of the box around the rectangle |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/scene3d.py#L122">source</a></font>
{% endraw %}
