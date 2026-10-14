---
title: 'spatialTransformProjective.byTilt'
sidebar: function_reference_sidebar
permalink: spatialTransformProjective.byTilt_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformProjective](spatialTransformProjective_index_py.html).

the specimen tilted by theta about an axis along x through centre, seen from the working
distance wd: the far side shrinks and straight lines stay straight

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformProjective.byTilt(70*degree, wd)
```

About the x axis.

</div>

<div class="mx-form" markdown="1">

```python
T = spatialTransformProjective.byTilt(70*degree, wd, centre)
```

Through a point left in place.

</div>

## Description

cos(theta) foreshortens across the tilt axis and wd sets how much the scale varies over
the frame: as wd grows the perspective vanishes and only the foreshortening is left. This
is a tilt one knows; one that was measured is fitted by spatialTransformTilt.

## Input

| `theta` | the tilt angle about the x axis |
| `wd` | the working distance the surface is seen from, positive |
| `centre` | vector3d, the point the tilt leaves in place, by default the origin |

## Output

| `T` | spatialTransformProjective |

## See also

[spatialTransformProjective.fit](spatialTransformProjective.fit_py.html), [spatialTransformTilt](spatialTransformTilt_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
spatialTransformProjective.byTilt(theta, wd, centre=None)
```

</div>

## Used on

[EBSDGrid](EBSDGrid_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L405">source</a></font>
{% endraw %}
