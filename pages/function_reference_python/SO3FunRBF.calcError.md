---
title: 'SO3FunRBF.calcError'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.calcError_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the distance between two orientation density functions, or the error of an ODF against
pole figures

## Syntax

<div class="mx-form" markdown="1">

```python
e = calcError(odf1, odf2)
```

Half the mean absolute difference.

</div>

<div class="mx-form" markdown="1">

```python
e = calcError(odf1, odf2, 'l2', resolution=2.5*degree)
```

The relative L2 error on a finer grid.

</div>

<div class="mx-form" markdown="1">

```python
e = calcError(odf, pf, 'RP')
```

The RP error against pole figures.

</div>

## Description

Two functions are compared at the nodes of an equispaced grid of the resolution in the
fundamental region of f; g is evaluated there whatever its own symmetry, where MATLAB
refuses functions of different symmetry. The mode chooses the measure:

- 'l1', the default: half the mean absolute difference. For two densities it is the fraction
of the volume that would have to move to turn one into the other, between 0 and 1.
- 'l2': the norm of the difference over the norm of g, on the grid; MATLAB computes it from
the harmonic series.

With pole figures second the result is PoleFigure.calcError, one number per pole figure,
with its own modes ('relative', the default, 'RP', 'l1', 'l2') and the threshold epsilon.
MATLAB's 'L0', the volume where the two differ by more than epsilon, is not provided.

## Input

| `f` | SO3Fun |
| `g` | SO3Fun, or PoleFigure |
| `mode` | 'l1' or 'l2' for two functions, 'relative', 'RP', 'l1' or 'l2' with pole figures |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `5*degree` | the spacing of the grid on which two functions are compared |
| `epsilon` | `None` | the threshold of the error against pole figures |

## Output

| `e` | float, or one float per pole figure |

## See also

[PoleFigure.calcError](PoleFigure.calcError_py.html), [calcODF](calcODF_py.html), [PoleFigure2ODF](PoleFigure2ODF_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L478">source</a></font>
{% endraw %}
