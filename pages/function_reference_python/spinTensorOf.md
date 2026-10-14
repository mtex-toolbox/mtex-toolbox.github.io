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

<div class="mx-form" markdown="1">

```python
W = spinTensorOf(v)
```

In the frame of v.

</div>

<div class="mx-form" markdown="1">

```python
W = spinTensorOf(a, frame=cs)
```

Of the coordinates a in the frame cs.

</div>

## Input

| `v` | vector3d, or an array of (..., 3) coordinates |

## Keywords

| keyword | default | description |
|---|---|---|
| `frame` | `None` | the frame of the tensor, for coordinates without one |

## Output

| `W` | spinTensor |

## See also

[spinTensor](spinTensor_index_py.html), [spinTensor.vector](spinTensor.vector_py.html), [spin](spin_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L452">source</a></font>
{% endraw %}
