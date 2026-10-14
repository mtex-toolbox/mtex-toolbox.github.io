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
a scan distortion described by a polynomial displacement in x and y

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformPoly(c, 2)
T = spatialTransformPoly.fit(posA, posB, degree=2)
pos2 = T * pos
```

</div>

## Description

The output is the input position plus the polynomial displacement. Rows of c multiply
the terms [1, x, y] for degree 1, or `[1, x, y, x**2, x*y, y**2]` for degree 2.
Its two columns give the x and y displacements. The z coordinate is unchanged.
A degree-1 displacement is an affine map and has an exact matrix inverse; degree 2
uses a numerical inverse. With no coefficients the transform is the identity.

## Input

| `c` | coefficient array of shape (3, 2) or (6, 2) |
| `degree` | 1 or 2; inferred from the number of coefficient rows when omitted |

## Output

| `T` | spatialTransformPoly |

## Properties

| `c` | displacement coefficients |
| `degree` | polynomial degree |

## See also

[spatialTransformPoly.fit](spatialTransformPoly.fit_py.html), [spatialTransformPoly.shiftMatrix](spatialTransformPoly.shiftMatrix_py.html), [spatialTransformInverse](spatialTransformInverse_index_py.html)

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

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L530">source</a></font>
{% endraw %}
