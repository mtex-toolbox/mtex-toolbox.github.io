---
title: 'stiffnessTensor.rand'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.rand_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.rand.html
status: Reference
---
{% raw %}
A method of [stiffnessTensor](stiffnessTensor_index_py.html).

a random tensor with the symmetries its class and frame ask for; MATLAB's rand of a tensor
class

## Syntax

Entries uniform in [0, 1]:

```python
T = tensor.rand(rank=4)
```

A list of 100 in the frame cs:

```python
T = tensor.rand(100, cs, rank=2)
```

A random compliance tensor:

```python
S = complianceTensor.rand()
```

Reproducible, of the symmetry of cs:

```python
C = stiffnessTensor.rand(cs, rng=np.random.default_rng(0))
```

A plain tensor has independent entries drawn uniformly from [0, 1], as MATLAB's, and none
of the symmetries a physical tensor would have. A symmetric one (strain, stress, ...) is
the symmetric part of such a tensor, symmetrised in its frame; a stiffness or compliance
tensor is besides made positive definite, as the class requires. The numbers among the
arguments give the shape of the list, a reference frame the frame; other keywords go to
the constructor of the class.

## Input

| | |
|---|---|
| `n, m, ...` | the shape of the list |
| `cs` | referenceFrame, the frame |

## Output

| | |
|---|---|
| `T` | a tensor of the class |

## Keywords

| | default | |
|---|---|---|
| `rank` | `None` | the rank of a plain tensor, by default that of the class, two for a plain tensor |
| `rng` | `None` | the NumPy random generator, a fresh one by default |

## See also

[tensor.ones](tensor.ones_py.html), [tensor.zeros](tensor.zeros_py.html), [tensor.eye](tensor.eye_py.html)

MATLAB's [stiffnessTensor.rand](stiffnessTensor.rand.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L912">source</a></font>
{% endraw %}
