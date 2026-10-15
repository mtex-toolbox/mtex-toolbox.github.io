---
title: 'directionalMagnitude'
sidebar: function_reference_sidebar
permalink: directionalMagnitude_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the magnitude of a tensor in the direction v, the tensor contracted with the unit direction
on every index, T.directionalMagnitude(v); MATLAB's directionalMagnitude

## Syntax

<div class="mx-form" markdown="1">

```python
q = directionalMagnitude(T, v)
```

At the directions v.

</div>

<div class="mx-form" markdown="1">

```python
q = directionalMagnitude(T)
```

The function on the sphere.

</div>

## Input

| `T` | tensor |
| `v` | vector3d or Miller, the directions; left out for the function |

## Output

| `q` | the magnitudes, or an S2FunHarmonic of the direction |

## See also

[tensor.directionalMagnitude](tensor.directionalMagnitude_py.html), [YoungsModulus](complianceTensor.YoungsModulus_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
directionalMagnitude(T, v=None)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1850">source</a></font>
{% endraw %}
