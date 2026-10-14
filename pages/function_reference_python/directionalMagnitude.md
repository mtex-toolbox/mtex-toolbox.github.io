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

At the directions v:

```python
q = directionalMagnitude(T, v)
```

The function on the sphere:

```python
q = directionalMagnitude(T)
```

## Input

| | |
|---|---|
| `T` | tensor |
| `v` | vector3d or Miller, the directions; left out for the function |

## Output

| | |
|---|---|
| `q` | the magnitudes, or an S2FunHarmonic of the direction |

## See also

[tensor.directionalMagnitude](tensor.directionalMagnitude_py.html), [YoungsModulus](complianceTensor.YoungsModulus_py.html)

## Signature

```python
directionalMagnitude(T, v=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1613">source</a></font>
{% endraw %}
