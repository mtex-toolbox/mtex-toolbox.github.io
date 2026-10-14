---
title: 'grain2d.fitEllipse'
sidebar: function_reference_sidebar
permalink: grain2d.fitEllipse_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.fitEllipse.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

describe each outline by the ellipse with the same central second area moments

## Syntax

<div class="mx-form" markdown="1">

```python
center, longAxis, shortAxis = grains.fitEllipse()
```

</div>

## Description

The centre is the polygon's area centroid. The two antipodal vector3d axes point along
the principal directions in the specimen frame; their lengths are the ellipse's semi-axis
lengths, with the longer axis first. Holes subtract from the area moments. This is a moment
equivalent ellipse, rather than a least-squares fit to boundary vertices, and its area need
not equal the polygon area.

## Output

| `center` | vector3d area centroid of every outline |
| `longAxis` | long semi-axis vectors |
| `shortAxis` | short semi-axis vectors |

## See also

[principalComponents](principalComponents_py.html), [aspectRatio](aspectRatio_py.html), [longAxis](longAxis_py.html), [shortAxis](shortAxis_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
grain2d.fitEllipse(self)
```

</div>

## Used on

[EllipseBasedParameters](EllipseBasedParameters_py.html)

MATLAB's [grain2d.fitEllipse](grain2d.fitEllipse.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L101">source</a></font>
{% endraw %}
