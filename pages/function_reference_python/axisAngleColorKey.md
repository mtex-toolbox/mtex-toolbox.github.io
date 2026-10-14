---
title: 'The class axisAngleColorKey'
sidebar: function_reference_sidebar
permalink: axisAngleColorKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: axisAngleColorKey.html
status: Reference
---
{% raw %}
the rotation from a reference orientation as a colour: its axis in the specimen frame
through the key of the whole sphere, its angle through the saturation (Thomsen et al.)

## Syntax

```python
axisAngleColorKey(frameA, frameB, oriRef=..., maxAngle=..., thresholdAngle=...)
rgb = key.orientation2color(ori)
rgb = key.orientation2color(ori, oriRef)
```

The saturation is full at maxAngle, by default the 80th percentile of the angles, and the
colour is NaN above thresholdAngle. Without a reference the identity is the reference.

## Members

| | |
|---|---|
| [orientation2color](axisAngleColorKey.orientation2color_py.html) | the colours of orientations: the axis of the rotation from the reference through the key of the sphere, its angle as the saturation, NaN above thresholdAngle |

## Used on

[EBSDDenoising](EBSDDenoising_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [Grain_dispersion_axes](Grain_dispersion_axes_py.html), [LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [GND](GND_py.html)

MATLAB's [axisAngleColorKey](axisAngleColorKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L261">source</a></font>
{% endraw %}
