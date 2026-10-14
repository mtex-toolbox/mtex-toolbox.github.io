---
title: 'S1Fun.min'
sidebar: function_reference_sidebar
permalink: S1Fun.min_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Fun.min.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

global, local and pointwise minima of a function on the circle

## Syntax

The global minimum and the angle it is taken at:

```python
v, pos = min(sF)
```

The three smallest local minima:

```python
values, positions = min(sF, numLocal=3)
```

The pointwise minimum with a constant:

```python
sF = min(sF, 0)
```

The pointwise minimum of two functions:

```python
sF = min(sF1, sF2, bandwidth=64)
```

The function is sampled at the resolution, the discrete local minima are refined by a
ternary search, and the smallest numLocal are returned with the values ascending: a pair
of numbers for numLocal 1, else two arrays. With a number or a second function the result
is the pointwise minimum as a Fourier series, by quadrature at the larger bandwidth of the
two unless bandwidth is given. MATLAB's vector valued form min(sF, [], dim) and its options
kmax, startingNodes, tolerance and maxStepSize are not taken.

## Input

| | |
|---|---|
| `sF, sF1, sF2` | S1FunHarmonic |

## Output

| | |
|---|---|
| `v, values` | the smallest values |
| `pos, positions` | the angles, in radians, they are taken at |
| `sF` | S1FunHarmonic, the pointwise minimum |

## Keywords

| | default | |
|---|---|---|
| `numLocal` | `1` | the number of local minima to return |
| `resolution` | `0.004363323129985824` | the spacing of the sampling the minima are searched on |
| `bandwidth` | `None` | the bandwidth of the pointwise minimum |

## See also

[S1FunHarmonic.max](S1FunHarmonic.max_py.html), SO3FunHarmonic.min

MATLAB's [S1Fun.min](S1Fun.min.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L364">source</a></font>
{% endraw %}
