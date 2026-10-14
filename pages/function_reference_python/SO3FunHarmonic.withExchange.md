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

<div class="mx-form" markdown="1">

```python
MDF = MDF.withExchange()
```

The mean of f(g) and f(g^-1), flagged antipodal.

</div>

<div class="mx-form" markdown="1">

```python
MDF = MDF.withExchange(False)
```

The flag dropped, the coefficients kept.

</div>

## Description

A misorientation distribution between two grains of one phase does not know which grain is
the first, so it is invariant under g -> g^-1; MATLAB sets this by SO3F.antipodal = true. The
function's frames must be the same on both sides, else a ValueError is raised.

## Input

| `SO3F` | SO3FunHarmonic with the same frame on both sides |

## Keywords

| keyword | default | description |
|---|---|---|
| `x` | `True` | impose the symmetry and set the flag (True), or only drop the flag (False) |

## Output

| `SO3F` | SO3FunHarmonic, its antipodal flag set to x |

## See also

[SO3FunHarmonic.inv](SO3FunHarmonic.inv_py.html), [calcMDF](SO3Fun.calcMDF_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L415">source</a></font>
{% endraw %}
