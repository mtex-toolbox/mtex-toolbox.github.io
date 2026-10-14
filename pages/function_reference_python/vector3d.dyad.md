---
title: 'vector3d.dyad'
sidebar: function_reference_sidebar
permalink: vector3d.dyad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.dyad.html
status: Reference
---
{% raw %}
the dyadic product of tensors or vectors, their outer product; MATLAB's dyad

## Syntax

The outer product, of the ranks added:

```python
T = dyad(T1, T2)
```

The third dyadic power v x v x v:

```python
T = dyad(v, 3)
```

A vector counts as a tensor of rank one; a single argument is returned as a tensor. The
power is given as the second argument; the keyword n is not used.

## Input

| | |
|---|---|
| `a` | tensor or vector3d, T1 above |
| `b` | tensor or vector3d, T2 above, or an integer power |

## Output

| | |
|---|---|
| `T` | tensor |

## Keywords

| | default | |
|---|---|---|
| `n` | `None` | not used |

## See also

[EinsteinSum](EinsteinSum_py.html), [colon](complianceTensor.colon_py.html)

## Used on

[IsotropicTheory](IsotropicTheory_py.html)

MATLAB's [vector3d.dyad](vector3d.dyad.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1135">source</a></font>
{% endraw %}
