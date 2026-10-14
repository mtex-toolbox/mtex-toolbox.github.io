---
title: 'S1FunHandle.min'
sidebar: function_reference_sidebar
permalink: S1FunHandle.min_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S1FunHandle](S1FunHandle_index_py.html).

the global, local and pointwise minima of a function on the circle given by a callable

## Syntax

<div class="mx-form" markdown="1">

```python
v, pos = min(sF)
```

The minimum and the angle it is taken at.

</div>

<div class="mx-form" markdown="1">

```python
values, positions = min(sF, numLocal=3)
```

The three smallest local minima.

</div>

<div class="mx-form" markdown="1">

```python
sF = min(sF, 0.5)
```

The pointwise minimum with a constant.

</div>

<div class="mx-form" markdown="1">

```python
sF = min(sF1, sF2, bandwidth=32)
```

The pointwise minimum of two functions.

</div>

## Description

The minima are searched on an equispaced raster of the resolution and refined by a ternary
search about every peak; numLocal returns the smallest local minima, in ascending order.
With a number or a second function the result is the pointwise minimum, an S1FunHandle, or
an S1FunHarmonic of the bandwidth when one of the two is harmonic; as S1FunHarmonic.min.

## Input

| `sF, sF1, sF2` | S1Fun |

## Keywords

| keyword | default | description |
|---|---|---|
| `numLocal` | `1` | the number of local minima to return |
| `resolution` | `0.004363323129985824` | the spacing of the raster the search starts from |
| `bandwidth` | `None` | the bandwidth of the pointwise minimum, by default the larger of the two |

## Output

| `v, values` | the smallest value, or an array of the local minima |
| `pos, positions` | the angle in radians, or an array of them |
| `sF` | S1FunHandle or S1FunHarmonic, the pointwise minimum |

## See also

[S1FunHandle.max](S1FunHandle.max_py.html), [S1FunHarmonic.min](S1FunHarmonic.min_py.html), [S1FunHandle](S1FunHandle_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L723">source</a></font>
{% endraw %}
