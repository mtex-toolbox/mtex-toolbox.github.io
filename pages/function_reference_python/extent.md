---
title: 'extent'
sidebar: function_reference_sidebar
permalink: extent_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
extent(x, ...) is x.extent(...), the method of the object passed

## Syntax

<div class="mx-form" markdown="1">

```python
extent(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.extent_py.html) | the bounds of the measured positions, [xmin, xmax, ymin, ymax] |
| [EBSD3](EBSD3.extent_py.html) | the bounding box of the voxels, [xmin, xmax, ymin, ymax, zmin, zmax], the padding left out |
| [EBSDFileInfo](EBSDFileInfo.extent_py.html) | the lengths the grid spans along its axes, in the scan unit |
| [gnomonicProjection](gnomonicProjection.extent_py.html) | the radius of the polar angle 80 degrees, the extent of a gnomonic chart |
| [grain3d](grain3d.extent_py.html) | the box of the vertices, [xmin, xmax, ymin, ymax, zmin, zmax] |
| [mapImage](mapImage.extent_py.html) | [xmin, xmax, ymin, ymax, zmin, zmax] of the pixel centres |
| [sphericalProjection](sphericalProjection.extent_py.html) | the radius of the whole hemisphere, the natural extent of a chart |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
