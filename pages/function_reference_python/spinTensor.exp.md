---
title: 'spinTensor.exp'
sidebar: function_reference_sidebar
permalink: spinTensor.exp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spinTensor](spinTensor_index_py.html).

the rotation a spin tensor generates, the exponential of its axial vector, or the
orientation a spin at a reference orientation leads to

## Syntax

The rotation of the spin:

```python
rot = W.exp()
```

The orientation reached from ori0:

```python
ori = W.exp(ori0)
```

The spin applied on the crystal side:

```python
ori = W.exp(ori0, side='right')
```

A spin in a crystal frame acts on the right of the orientation, ori0 * exp(W), one in the
specimen frame on the left, exp(W) * ori0, unless side says otherwise.

## Input

| | |
|---|---|
| `W` | spinTensor |

## Output

| | |
|---|---|
| `rot` | rotation, or orientation with a reference |

## Keywords

| | default | |
|---|---|---|
| `ref` | `None` | orientation, the reference the spin starts at, ori0 above |
| `side` | `None` | 'left' or 'right', the side the spin acts on; by default from the frame of W |

## See also

[spinTensorOf](spinTensorOf_py.html), [SO3TangentVector](SO3TangentVector_index_py.html), [doEulerStep](doEulerStep_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/taylor.py#L456">source</a></font>
{% endraw %}
