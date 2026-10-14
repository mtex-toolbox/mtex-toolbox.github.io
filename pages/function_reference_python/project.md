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
project directions to a plane or embeddings back to orientations.

## Syntax

<div class="mx-form" markdown="1">

```python
projected = project(plane, positions)
```

</div>

## Description

For an MTEX object, project(x, ...) calls x.project(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
project(x, *args, **kwargs)
```

</div>

## Methods it calls

| [embedding](embedding.project_py.html) | the rotations whose images are closest to the embedding, the projection of a point of the Euclidean space back onto the orientations |
| [plainProjection](plainProjection.project_py.html) | the plane coordinates (rho, theta) of directions in degrees, NaN outside the region |
| [plane3d](plane3d.project_py.html) | orthogonally project points onto the planes |
| [sphericalProjection](sphericalProjection.project_py.html) | the plane coordinates (x, y) of directions, NaN outside the region |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
