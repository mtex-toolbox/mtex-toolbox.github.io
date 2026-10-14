---
title: 'project'
sidebar: function_reference_sidebar
permalink: project_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
project(x, ...) is x.project(...), the method of the object passed

## Syntax

```python
project(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [embedding](embedding.project_py.html) | the rotations whose images are closest to the embedding, the projection of a point of the Euclidean space back onto the orientations |
| [plainProjection](plainProjection.project_py.html) | the plane coordinates (rho, theta) of directions in degrees, NaN outside the region |
| [plane3d](plane3d.project_py.html) | the orthogonal projection of points onto the plane |
| [sphericalProjection](sphericalProjection.project_py.html) | the plane coordinates (x, y) of directions, NaN outside the region |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
