---
title: 'The class spatialTransformRigid'
sidebar: function_reference_sidebar
permalink: spatialTransformRigid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransformRigid.html
status: Reference
---
{% raw %}
a translation of the plane by the vector3d u

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformRigid(vector3d(1, 2, 0))
T = spatialTransformRigid.fit(posA, posB, weights=w)
```

</div>

## Members

| [fit](spatialTransformRigid.fit_py.html) | the translation fitted to point pairs, the weighted mean of their displacements |
| [inv](spatialTransformRigid.inv_py.html) | the translation by -u |
| [paramChar](spatialTransformRigid.paramChar_py.html) | the translation as a line of text |
| [u](spatialTransformRigid.u_py.html) | the translation vector |

## Used on

[EBSDSpatialTransform](EBSDSpatialTransform_py.html)

MATLAB's [spatialTransformRigid](spatialTransformRigid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L316">source</a></font>
{% endraw %}
