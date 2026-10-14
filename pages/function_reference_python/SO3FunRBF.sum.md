---
title: 'SO3FunRBF.sum'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.sum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.sum.html
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the integral over orientation space, 8 pi^2 times the mean; with an axis the sum along it,
MATLAB's sum(odf, d) with d = axis + 1, which for a single function is the function itself

## Syntax

The integral, 8 pi^2 for an ODF:

```python
value = sum(odf)
```

Along an axis of a list, the function itself for one:

```python
odf = sum(odf, axis=0)
```

## Input

| | |
|---|---|
| `odf` | SO3Fun |

## Output

| | |
|---|---|
| `value` | the integral, a number |
| `odf` | the function summed along the axis |

## Keywords

| | default | |
|---|---|---|
| `axis` | `None` | the axis to sum along, a non-negative integer; the integral when None |

## See also

[SO3FunHarmonic.sum](SO3FunHarmonic.sum_py.html), [SO3FunHarmonic.mean](SO3FunHarmonic.mean_py.html)

MATLAB's [SO3FunRBF.sum](SO3FunRBF.sum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L778">source</a></font>
{% endraw %}
