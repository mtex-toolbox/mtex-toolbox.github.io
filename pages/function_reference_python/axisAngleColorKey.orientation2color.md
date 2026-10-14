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
the sphere, its angle as the saturation, NaN above thresholdAngle; the reference given here
takes the place of the key's

## Syntax

```python
rgb = key.orientation2color(ori)
rgb = key.orientation2color(ori, oriRef)
```

## Signature

```python
axisAngleColorKey.orientation2color(self, ori, oriRef=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L267">source</a></font>
{% endraw %}
