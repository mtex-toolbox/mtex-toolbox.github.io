---
title: 'axisAngleColorKey.orientation2color'
sidebar: function_reference_sidebar
permalink: axisAngleColorKey.orientation2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [axisAngleColorKey](axisAngleColorKey_index_py.html).

the colours of orientations: the axis of the rotation from the reference through the key of
the sphere, its angle as the saturation, NaN above thresholdAngle

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = key.orientation2color(ori)
```

From the key's reference.

</div>

<div class="mx-form" markdown="1">

```python
rgb = key.orientation2color(ori, oriRef)
```

From a reference given here.

</div>

## Description

The saturation is full at the key's maxAngle, by default the 80th percentile of the angles
of ori. Without any reference the identity is the reference, so the colour shows the
rotation itself.

## Input

| `ori` | orientation |

## Keywords

| keyword | default | description |
|---|---|---|
| `oriRef` | `None` | one reference orientation, or one per orientation, in place of the key's |

## Output

| `rgb` | (..., 3) array of colours, NaN above thresholdAngle and for an unmeasured orientation |

## See also

[axisAngleColorKey](axisAngleColorKey_index_py.html), [ipfColorKey.orientation2color](ipfColorKey.orientation2color_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L404">source</a></font>
{% endraw %}
