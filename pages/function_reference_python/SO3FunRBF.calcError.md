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

Half the mean absolute difference:

```python
e = calcError(odf1, odf2)
```

The relative L2 error on a finer grid:

```python
e = calcError(odf1, odf2, 'l2', resolution=2.5*degree)
```

The RP error against pole figures:

```python
e = calcError(odf, pf, 'RP')
```

Two functions are compared on the equispaced grid of the resolution: 'l1', the default, is
half the mean absolute difference, for two densities the fraction of the volume that would
have to move to turn one into the other; 'l2' is the norm of the difference over the norm of
g. With pole figures second the result is PoleFigure.calcError, one number per pole figure,
with its own modes ('relative', the default, 'RP', 'l1', 'l2') and the threshold epsilon.
MATLAB's 'L0', the volume where the two differ by more than epsilon, is not provided.

## Input

| | |
|---|---|
| `f` | SO3Fun |
| `g` | SO3Fun, or PoleFigure |
| `mode` | 'l1' or 'l2' for two functions, 'relative', 'RP', 'l1' or 'l2' with pole figures |

## Output

| | |
|---|---|
| `e` | float, or one float per pole figure |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `5*degree` | the spacing of the grid on which two functions are compared |
| `epsilon` | `None` | the threshold of the error against pole figures |

## See also

[PoleFigure.calcError](PoleFigure.calcError_py.html), [calcODF](calcODF_py.html), [PoleFigure2ODF](PoleFigure2ODF_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L364">source</a></font>
{% endraw %}
