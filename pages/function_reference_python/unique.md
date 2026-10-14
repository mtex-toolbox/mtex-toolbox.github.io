---
title: 'unique'
sidebar: function_reference_sidebar
permalink: unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
remove duplicate geometric objects, respecting their symmetry and tolerance.

## Syntax

<div class="mx-form" markdown="1">

```python
distinct = unique(x)
```

</div>

## Description

For an MTEX object, unique(x, ...) calls x.unique(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.unique.

## Signature

<div class="mx-form" markdown="1">

```python
unique(x, *args, **kwargs)
```

</div>

## Methods it calls

| [orientation](orientation.unique_py.html) | the disjoint list of orientations, symmetric equivalents within a tolerance taken as one |
| [orthogonalTransform](orthogonalTransform.unique_py.html) | the disjoint list of orthogonal transforms, those equal up to a tolerance taken as one |
| [PoleFigure](PoleFigure.unique_py.html) | the duplicated directions removed: equivalent specimen directions under the specimen group carry the same pole density, so they are merged and their intensities averaged |
| [quaternion](quaternion.unique_py.html) | the disjoint list of quaternions, those equal up to a tolerance in the coefficients taken as one |
| [rotation](rotation.unique_py.html) | the disjoint list of quaternions, those equal up to a tolerance in the coefficients taken as one |
| [SO3TangentVector](SO3TangentVector.unique_py.html) | the disjoint list of tangent vectors at one shared reference |
| [vector3d](vector3d.unique_py.html) | the disjoint list of vectors, equal ones within a tolerance taken once |

## Used on

[MisorientationTheory](MisorientationTheory_py.html), [ParentChildVariants](ParentChildVariants_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
