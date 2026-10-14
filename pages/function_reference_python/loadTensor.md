---
title: 'loadTensor'
sidebar: function_reference_sidebar
permalink: loadTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the tensor a text file holds: the last block of numeric rows, the density on the line
after the word density, the crystal frame given positionally; MATLAB's tensor.load and
loadTensor_generic

## Syntax

<div class="mx-form" markdown="1">

```python
C = stiffnessTensor.load('Olivine1997PC.GPa', cs)
```

A stiffness tensor and its density.

</div>

<div class="mx-form" markdown="1">

```python
C = loadTensor('Olivine1997PC.GPa', cs, cls=stiffnessTensor)
```

The same.

</div>

<div class="mx-form" markdown="1">

```python
P = tensor.load('Single_RH_quartz_poly.P', cs, rank=3, doubleConvention=True)
```

A rank three in Voigt form.

</div>

<div class="mx-form" markdown="1">

```python
T = loadTensor('Olivine1997PC.GPa', cs)
```

A plain tensor, the rank from the block.

</div>

## Description

The coefficients are the last block of numeric rows of one width: six rows of six a Voigt
matrix, three of six the Voigt table of a rank three, three of three a rank two. A plain
tensor takes its rank from that shape unless rank= is given. A density stated on the line
after a line starting with 'density' is passed on, divided by 1000 when that line says kg.
The other keywords (rank, doubleConvention, density, unit, ...) go to the constructor of
the class.

## Input

| `fname` | the name of the file |
| `cs` | the crystal frame (optional) |

## Keywords

| keyword | default | description |
|---|---|---|
| `cls` | `None` | the class of the tensor, tensor by default; stiffnessTensor.load passes its own |

## Output

| `T` | a tensor of the class cls |

## See also

[tensor](tensor_index_py.html), [stiffnessTensor](stiffnessTensor_index_py.html), [complianceTensor](complianceTensor_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/loadtensor.py#L64">source</a></font>
{% endraw %}
