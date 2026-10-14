---
title: 'S1FunHandle.max'
sidebar: function_reference_sidebar
permalink: S1FunHandle.max_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S1FunHandle](S1FunHandle_index_py.html).

the global, local and pointwise maxima of a function on the circle given by a callable

## Syntax

The maximum and the angle it is taken at:

```python
v, pos = max(sF)
```

The three largest local maxima:

```python
values, positions = max(sF, numLocal=3)
```

The pointwise maximum with a constant:

```python
sF = max(sF, 0.5)
```

The pointwise maximum of two functions:

```python
sF = max(sF1, sF2, bandwidth=32)
```

The maxima are searched on an equispaced raster of the resolution and refined by a ternary
search about every peak; numLocal returns the largest local maxima, in descending order.
With a number or a second function the result is the pointwise maximum, an S1FunHandle, or
an S1FunHarmonic of the bandwidth when one of the two is harmonic; as S1FunHarmonic.max.

## Input

| | |
|---|---|
| `sF, sF1, sF2` | S1Fun |

## Output

| | |
|---|---|
| `v, values` | the largest value, or an array of the local maxima |
| `pos, positions` | the angle in radians, or an array of them |
| `sF` | S1FunHandle or S1FunHarmonic, the pointwise maximum |

## Keywords

| | default | |
|---|---|---|
| `numLocal` | `1` | the number of local maxima to return |
| `resolution` | `0.004363323129985824` | the spacing of the raster the search starts from |
| `bandwidth` | `None` | the bandwidth of the pointwise maximum, by default the larger of the two |

## See also

[S1FunHandle.min](S1FunHandle.min_py.html), [S1FunHarmonic.max](S1FunHarmonic.max_py.html), [S1FunHandle](S1FunHandle_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L692">source</a></font>
{% endraw %}
