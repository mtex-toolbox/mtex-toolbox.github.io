---
title: 'S1FunHarmonic.max'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.max_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.max.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

global, local and pointwise maxima of a function on the circle

## Syntax

The global maximum and the angle it is taken at:

```python
v, pos = max(sF)
```

Searched on a coarser sampling:

```python
v, pos = max(sF, resolution=1*degree)
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
sF = max(sF1, sF2, bandwidth=64)
```

The function is sampled at the resolution, the discrete local maxima are refined by a
ternary search, and the largest numLocal are returned with the values descending: a pair
of numbers for numLocal 1, else two arrays. With a number or a second function the result
is the pointwise maximum as a Fourier series, by quadrature at the larger bandwidth of the
two unless bandwidth is given. MATLAB's vector valued form max(sF, [], dim) and its options
kmax, startingNodes, tolerance and maxStepSize are not taken.

## Input

| | |
|---|---|
| `sF, sF1, sF2` | S1FunHarmonic |

## Output

| | |
|---|---|
| `v, values` | the largest values |
| `pos, positions` | the angles, in radians, they are taken at |
| `sF` | S1FunHarmonic, the pointwise maximum |

## Keywords

| | default | |
|---|---|---|
| `numLocal` | `1` | the number of local maxima to return |
| `resolution` | `0.004363323129985824` | the spacing of the sampling the maxima are searched on |
| `bandwidth` | `None` | the bandwidth of the pointwise maximum |

## See also

[S1FunHarmonic.min](S1FunHarmonic.min_py.html), [SO3FunHarmonic.max](SO3FunHarmonic.max_py.html)

MATLAB's [S1FunHarmonic.max](S1FunHarmonic.max.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L332">source</a></font>
{% endraw %}
