---
title: 'S1Fun.max'
sidebar: function_reference_sidebar
permalink: S1Fun.max_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Fun.max.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

global, local and pointwise maxima of a function on the circle

## Syntax

<div class="mx-form" markdown="1">

```python
v, pos = max(sF)
```

The global maximum and the angle it is taken at.

</div>

<div class="mx-form" markdown="1">

```python
v, pos = max(sF, resolution=1*degree)
```

Searched on a coarser sampling.

</div>

<div class="mx-form" markdown="1">

```python
values, positions = max(sF, numLocal=3)
```

The three largest local maxima.

</div>

<div class="mx-form" markdown="1">

```python
sF = max(sF, 0.5)
```

The pointwise maximum with a constant.

</div>

<div class="mx-form" markdown="1">

```python
sF = max(sF1, sF2, bandwidth=64)
```

The pointwise maximum of two functions.

</div>

## Description

The function is sampled at the resolution, the discrete local maxima are refined by a
ternary search, and the largest numLocal are returned with the values descending: a pair
of numbers for numLocal 1, else two arrays. With a number or a second function the result
is the pointwise maximum as a Fourier series, by quadrature at the larger bandwidth of the
two unless bandwidth is given. MATLAB's vector valued form max(sF, [], dim) and its options
kmax, startingNodes, tolerance and maxStepSize are not taken.

## Input

| `sF, sF1, sF2` | S1FunHarmonic |

## Keywords

| keyword | default | description |
|---|---|---|
| `numLocal` | `1` | the number of local maxima to return |
| `resolution` | `0.004363323129985824` | the spacing of the sampling the maxima are searched on |
| `bandwidth` | `None` | the bandwidth of the pointwise maximum |

## Output

| `v, values` | the largest values |
| `pos, positions` | the angles, in radians, they are taken at |
| `sF` | S1FunHarmonic, the pointwise maximum |

## See also

[S1FunHarmonic.min](S1FunHarmonic.min_py.html), [SO3FunHarmonic.max](SO3FunHarmonic.max_py.html)

MATLAB's [S1Fun.max](S1Fun.max.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L434">source</a></font>
{% endraw %}
