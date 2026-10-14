---
title: 'SO3FunHarmonic.norm'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.norm_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.norm.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the L2 norm, or the Sobolev norm sqrt(sum (2n+1)^{2s} |fhat_n|^2)

## Syntax

<div class="mx-form" markdown="1">

```python
t = norm(SO3F)
```

The L2 norm, the texture index.

</div>

<div class="mx-form" markdown="1">

```python
t = norm(SO3F, s=1)
```

The Sobolev norm of index 1.

</div>

## Description

By Parseval's equality the L2 norm sqrt(1/(8 pi^2) int |f(R)|^2 dR) is the Euclidean norm of
the Wigner coefficients, the Wigner functions being normalised; MATLAB calls it the texture
index. With a Sobolev index s every degree n is weighted by (2n+1)^{2s}.

## Input

| `SO3F` | SO3FunHarmonic, a single function or a list |

## Keywords

| keyword | default | description |
|---|---|---|
| `s` | `None` | the Sobolev index; None or 0 for the L2 norm |

## Output

| `t` | float, or an array of the shape of the list |

## See also

[SO3FunHarmonic.mean](SO3FunHarmonic.mean_py.html), [textureIndex](textureIndex_py.html)

MATLAB's [SO3FunHarmonic.norm](SO3FunHarmonic.norm.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L595">source</a></font>
{% endraw %}
