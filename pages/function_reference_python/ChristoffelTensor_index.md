---
title: 'The class ChristoffelTensor'
sidebar: function_reference_sidebar
permalink: ChristoffelTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ChristoffelTensor_index.html
status: Reference
---
{% raw %}
the elastic Christoffel tensor for a wave propagation direction

## Syntax

<div class="mx-form" markdown="1">

```python
E = ChristoffelTensor(C, n)
E = ChristoffelTensor(M, cs)
```

</div>

## Description

For stiffness C and a unit direction n, the rank-two tensor is E[i, k] = C[i, j, k, l]
n[j] n[l], summed over j and l. Its eigenvectors give the polarisation directions of the
three elastic waves. Dividing its eigenvalues by the material density gives squared wave
speeds when consistent physical units are used. The velocity function handles the
supported stiffness and density units.

It can also be constructed from a 3-by-3 matrix using the tensor constructor options.
When constructed from C, the crystal frame and density are carried from C.

## Input

| `M` | stiffnessTensor or complianceTensor, or a 3-by-3 Christoffel matrix; compliance is inverted to stiffness before contraction |
| `args` | propagation direction n when M is elastic stiffness or compliance; otherwise the reference frame and other positional tensor arguments |
| `kwargs` | tensor constructor options for direct matrix input |

## Output

| `E` | ChristoffelTensor |

## Properties

| `M` | numeric tensor coefficients, with trailing dimensions (3, 3) |
| `rank` | 2 |
| `frame` | coordinate frame of the coefficients |
| `density` | material density carried from the elastic tensor |

## See also

[stiffnessTensor](stiffnessTensor_index_py.html), [velocity](complianceTensor.velocity_py.html), [tensor.eig](tensor.eig_py.html)

## Members

| [ChristoffelTensor](ChristoffelTensor.ChristoffelTensor_py.html) | the elastic Christoffel tensor for a wave propagation direction |

## Used on

[WaveVelocities](WaveVelocities_py.html)

MATLAB's [ChristoffelTensor_index](ChristoffelTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1727">source</a></font>
{% endraw %}
