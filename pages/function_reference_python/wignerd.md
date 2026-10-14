---
title: 'wignerd'
sidebar: function_reference_sidebar
permalink: wignerd_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the real Wigner-d matrix d_l(beta) at one angle, or with bandwidth=L the list d_0 .. d_L;
MATLAB's Wigner_d_recursion

## Syntax

<div class="mx-form" markdown="1">

```python
d = wignerd(beta, l)
```

The (2l+1) x (2l+1) matrix of degree l.

</div>

<div class="mx-form" markdown="1">

```python
ds = wignerd(beta, bandwidth=L)
```

The matrices of the degrees 0 to L.

</div>

## Description

The matrices are those of MTEX's Wigner blocks, indexed from -l to l, computed by a stable
recursion over the degrees. Give either the degree or the bandwidth.

## Input

| `beta` | one angle, the second Euler angle |
| `degree` | the degree l |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the largest degree L of the list |

## Output

| `d` | ndarray of shape (2l+1, 2l+1) |
| `ds` | list of the matrices of the degrees 0 to L |

## See also

[WignerD](WignerD_py.html), [SO3FunHarmonic](SO3FunHarmonic_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/harmonics.py#L174">source</a></font>
{% endraw %}
