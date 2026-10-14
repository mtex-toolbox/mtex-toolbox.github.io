---
title: 'spinTensorOf'
sidebar: function_reference_sidebar
permalink: spinTensorOf_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the spin tensor of an axial vector v, the antisymmetric tensor W with W u = v x u

## Syntax

In the frame of v:

```python
W = spinTensorOf(v)
```

Of the coordinates a in the frame cs:

```python
W = spinTensorOf(a, frame=cs)
```

## Input

| | |
|---|---|
| `v` | vector3d, or an array of (..., 3) coordinates |

## Output

| | |
|---|---|
| `W` | spinTensor |

## Keywords

| | default | |
|---|---|---|
| `frame` | `None` | the frame of the tensor, for coordinates without one |

## See also

[spinTensor](spinTensor_index_py.html), [spinTensor.vector](spinTensor.vector_py.html), [spin](spin_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L324">source</a></font>
{% endraw %}
