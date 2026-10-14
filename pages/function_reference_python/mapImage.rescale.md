---
title: 'mapImage.rescale'
sidebar: function_reference_sidebar
permalink: mapImage.rescale_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.rescale.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

the values of one or more images stretched to a common range; MATLAB's rescale of a mapImage

## Syntax

<div class="mx-form" markdown="1">

```python
mg = rescale(mg)
```

To [0, 1].

</div>

<div class="mx-form" markdown="1">

```python
mg = rescale(mg, -1, 1)
```

To another range.

</div>

<div class="mx-form" markdown="1">

```python
mg = rescale(mg, perChannel=True)
```

Every channel on its own.

</div>

## Description

Cross correlation compares pictures of different detectors, whose absolute levels mean
nothing to each other, so putting them on one range is the usual first step. Each image is
rescaled on its own, all its channels together, which keeps the colour balance. A non finite
value is left out of the range and left alone, so the padding of a resampling stays NaN; a
flat image is returned unchanged.

## Input

| `mg` | mapImage or mapImageList |
| `lo` | the lower end of the range |
| `hi` | the upper end of the range |

## Keywords

| keyword | default | description |
|---|---|---|
| `perChannel` | `False` | rescale every channel separately |

## Output

| `mg` | the images rescaled, new objects |

## See also

[mapImage](mapImage_index_py.html), [mapImageList](mapImageList_index_py.html), [trueEbsd](trueEbsd_index_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [mapImage.rescale](mapImage.rescale.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L521">source</a></font>
{% endraw %}
