---
title: 'SO3FunHarmonic.withExchange'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.withExchange_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the function with the exchange symmetry f(g) = f(g^-1) imposed, by the mean with its inverse;
withExchange(False) drops the flag; needs the same frame on both sides

## Syntax

The mean of f(g) and f(g^-1), flagged antipodal:

```python
MDF = MDF.withExchange()
```

The flag dropped, the coefficients kept:

```python
MDF = MDF.withExchange(False)
```

A misorientation distribution between two grains of one phase does not know which grain is
the first, so it is invariant under g -> g^-1; MATLAB sets this by SO3F.antipodal = true. The
function's frames must be the same on both sides, else a ValueError is raised.

## Input

| | |
|---|---|
| `SO3F` | SO3FunHarmonic with the same frame on both sides |

## Output

| | |
|---|---|
| `SO3F` | SO3FunHarmonic, its antipodal flag set to x |

## Keywords

| | default | |
|---|---|---|
| `x` | `True` | impose the symmetry and set the flag (True), or only drop the flag (False) |

## See also

[SO3FunHarmonic.inv](SO3FunHarmonic.inv_py.html), [calcMDF](SO3Fun.calcMDF_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L403">source</a></font>
{% endraw %}
