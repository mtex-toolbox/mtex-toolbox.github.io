---
title: 'SO3Fun.dubna'
sidebar: function_reference_sidebar
permalink: SO3Fun.dubna_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.dubna.html
status: Reference
---
{% raw %}
A method of [SO3Fun](SO3Fun_index_py.html).

the ODF of the Dubna quartz pole figures, MTEX's example function; its values at
orientations when given

## Syntax

<div class="mx-form" markdown="1">

```python
odf = SO3Fun.dubna()
```

The example ODF, an SO3FunHarmonic of trigonal quartz.

</div>

<div class="mx-form" markdown="1">

```python
values = SO3Fun.dubna(ori)
```

Its values at orientations.

</div>

## Description

The function is read from the sample data, mtexdata('dubnaODF').

## Input

| `ori` | orientation of quartz, where to evaluate the function |

## Output

| `odf` | SO3FunHarmonic |
| `values` | array, the values at ori |

## See also

[mtexdata](mtexdata_py.html), [SO3FunHarmonic](SO3FunHarmonic_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3Fun.dubna(ori=None)
```

</div>

## Used on

[NeperInterface](NeperInterface_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3FunQuadrature](SO3FunQuadrature_py.html), [SO3FunSymmetricFunctions](SO3FunSymmetricFunctions_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [SO3Fun.dubna](SO3Fun.dubna.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3funclass.py#L20">source</a></font>
{% endraw %}
