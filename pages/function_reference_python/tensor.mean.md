---
title: 'tensor.mean'
sidebar: function_reference_sidebar
permalink: tensor.mean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.mean.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

the mean of a list of tensors, over all of them or along axes, weighted or not; with an ODF
or orientations the texture average

## Syntax

<div class="mx-form" markdown="1">

```python
T = T.mean()
```

The mean over the whole list.

</div>

<div class="mx-form" markdown="1">

```python
T = T.mean(axis=1)
```

Along the second axis, MATLAB's mean(T, 2).

</div>

<div class="mx-form" markdown="1">

```python
T = T.mean(weights=w)
```

The weighted mean.

</div>

<div class="mx-form" markdown="1">

```python
TReuss = T.mean('Reuss')
```

The inverse of the mean of the inverses.

</div>

<div class="mx-form" markdown="1">

```python
THill = T.mean('Hill')
```

The mean of the Voigt and Reuss means.

</div>

<div class="mx-form" markdown="1">

```python
TVoigt, TReuss, THill = T.mean('all')
```

The three averages at once.

</div>

<div class="mx-form" markdown="1">

```python
TVoigt = T.mean(odf)
```

The texture average over an ODF.

</div>

<div class="mx-form" markdown="1">

```python
TVoigt, TReuss, THill = T.mean(odf, 'all')
```

Its three averages.

</div>

<div class="mx-form" markdown="1">

```python
TVoigt = T.mean(ori, weights=w)
```

The average over weighted orientations.

</div>

## Description

The plain mean is MATLAB's Voigt average; MATLAB's three outputs are asked for by name,
'all'. With an ODF or orientations the mean is calcTensor's, the single crystal tensor
rotated by the orientations and averaged. NumPy's np.mean(T) and np.mean(T, axis=1) call it.
The density of tensors of different densities is averaged with them. MATLAB's
'geometric' mean is not there.

## Input

| `T` | tensor |
| `odf` | SO3Fun, the texture average over it |
| `ori` | orientation, the texture average over them |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | one weight per tensor, or per orientation |
| `axis` | `None` | the axis or tuple of axes of the list to average along |
| `dtype` | `None` | NumPy's argument, refused unless None |
| `out` | `None` | NumPy's argument, refused unless None |
| `keepdims` | `False` | keep the averaged axes with length one |

## Output

| `T` | tensor, the mean; TVoigt, TReuss, THill the three averages |

## See also

[calcTensor](EBSD.calcTensor_py.html), [tensor.sum](tensor.sum_py.html), [TensorAverage](TensorAverage_py.html)

MATLAB's [tensor.mean](tensor.mean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L777">source</a></font>
{% endraw %}
