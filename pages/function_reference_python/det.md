---
title: 'det'
sidebar: function_reference_sidebar
permalink: det_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
calculate tensor determinants or vector triple products.

## Syntax

<div class="mx-form" markdown="1">

```python
value = det(T)
```

</div>

## Description

For an MTEX object, det(x, ...) calls x.det(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.linalg.det.

## Signature

<div class="mx-form" markdown="1">

```python
det(x, *args, **kwargs)
```

</div>

## Methods it calls

| [tensor](tensor.det_py.html) | the determinant of a rank two tensor |
| [vector3d](vector3d.det_py.html) | the triple product, vector3d/det det(a, b, c) the triple product |

## Used on

[LatticeMetric](LatticeMetric_py.html), [RotationImproper](RotationImproper_py.html), [TensorArithmetics](TensorArithmetics_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
