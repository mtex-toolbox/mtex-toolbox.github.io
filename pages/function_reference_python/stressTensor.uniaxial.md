---
title: 'stressTensor.uniaxial'
sidebar: function_reference_sidebar
permalink: stressTensor.uniaxial_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [stressTensor](stressTensor_index_py.html).

the stress of a uniaxial tension along v, sigma v v^T

## Syntax

Of unit magnitude:

```python
sigma = stressTensor.uniaxial(v)
```

Of magnitude 100:

```python
sigma = stressTensor.uniaxial(v, sigma=100)
```

A uniaxial compression:

```python
sigma = -stressTensor.uniaxial(v)
```

The tensor is in the frame of v, the default specimen frame for a direction without one.

## Input

| | |
|---|---|
| `v` | vector3d or Miller, the tension direction |

## Output

| | |
|---|---|
| `sigma` | stressTensor |

## Keywords

| | default | |
|---|---|---|
| `sigma` | `1.0` | the magnitude of the stress |

## See also

[SchmidFactor](mtex.SchmidFactor_py.html), [velocityGradientTensor.uniaxial](velocityGradientTensor.uniaxial_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1260">source</a></font>
{% endraw %}
