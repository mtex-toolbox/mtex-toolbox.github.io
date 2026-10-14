---
title: 'trueEbsd.setOptions'
sidebar: function_reference_sidebar
permalink: trueEbsd.setOptions_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: trueEbsd.setOptions.html
status: Reference
---
{% raw %}
A method of [trueEbsd](trueEbsd_index_py.html).

the registration settings of every map of the job, or of one; MATLAB's setOptions of
trueEbsd

## Syntax

<div class="mx-form" markdown="1">

```python
job.setOptions(roiSize=5, numROI=24)
```

5 um tiles on every map.

</div>

<div class="mx-form" markdown="1">

```python
job.setOptions(1, registerOn='raw')
```

Map 1 alone matched on its values.

</div>

<div class="mx-form" markdown="1">

```python
job.setOptions(0, roiSize=[4, 8])
```

A tile width per fit stage of map 0.

</div>

<div class="mx-form" markdown="1">

```python
job.setOptions([0, 1], highContrast='auto')
```

Maps 0 and 1, measured when needed.

</div>

## Description

The settings say how the job registers, not what an image is, so they live on the job. The
lengths are in the scan unit, not in pixels, so they may be set before or after
pixelSizeMatch. The maps are counted from 0, where MATLAB counts them from 1.

A setting left at 'auto' is measured from a coarse correlation when calcDistortion first
needs it, and the choice is printed; a setting given here is used as it is. The settings
are keyword arguments, their names in any case:

- roiSize: the width of a correlation tile, a length; one, or one per fit stage; 0 for a
map correlated against nothing, as the reference.
- numROI: the number of tiles across the image, the number down following from the aspect
ratio; a fraction is rounded down.
- registerOn: 'edge' to correlate the edge transform, 'raw' the values as they are, for a
pair already sharing its contrast.
- edgeWidth: the neighbour distance of the edge transform, a length.
- highContrast: whether the image can be registered on directly, True, False or 'auto'.
- pixelTime: the dwell time per pixel, carried and not used.

## Input

| `job` | trueEbsd |

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `None` | the map, or a list of maps, the settings apply to; by default every map |

## Output

| `the job is changed in place` |  |

## See also

[trueEbsd](trueEbsd_index_py.html), [trueEbsd.calcDistortion](trueEbsd.calcDistortion_py.html), [mapImage.edgeMap](mapImage.edgeMap_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

## Used on

[EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [trueEbsd.setOptions](trueEbsd.setOptions.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/trueebsd.py#L134">source</a></font>
{% endraw %}
