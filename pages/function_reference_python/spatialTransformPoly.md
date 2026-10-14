---
title: 'The class spatialTransformPoly'
sidebar: function_reference_sidebar
permalink: spatialTransformPoly_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransformPoly.html
status: Reference
---
{% raw %}
a polynomial displacement of degree 1 or 2, the coefficients c one column per coordinate over
the basis [1 x y] or [1 x y x^2 xy y^2]

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformPoly(c, 2)
T = spatialTransformPoly.fit(posA, posB, degree=2, weights=w)
```

</div>

## Members

| [eval](spatialTransformPoly.eval_py.html) | the positions moved by the polynomial displacement |
| [fit](spatialTransformPoly.fit_py.html) | the polynomial displacement best mapping the positions posA onto posB |
| [fitOptions](spatialTransformPoly.fitOptions_py.html) | the degree, the keyword a refit keeps |
| [inv](spatialTransformPoly.inv_py.html) | the inverse: the inverse affine map at degree 1, the fixed point inverse at degree 2 |
| [isid](spatialTransformPoly.isid_py.html) | whether every coefficient vanishes |
| [paramChar](spatialTransformPoly.paramChar_py.html) | the size of the coefficients as a line of text |
| [shiftMatrix](spatialTransformPoly.shiftMatrix_py.html) | the affine map a degree 1 displacement is |
| [shortChar](spatialTransformPoly.shortChar_py.html) | the name in the display, poly11 or poly22 by the degree |

## Used on

[EBSDSpatialTransform](EBSDSpatialTransform_py.html)

MATLAB's [spatialTransformPoly](spatialTransformPoly.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L481">source</a></font>
{% endraw %}
