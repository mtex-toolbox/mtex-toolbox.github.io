---
title: 'SO3FunHarmonic.max'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.max_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.max.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the maximum of a function on SO(3) or the sphere, the value and the position, numLocal local maxima
from a grid refined down to the accuracy; with a second function or a number the pointwise
maximum; with axis= the maximum of a list of functions along an axis; MATLAB's max

## Syntax

<div class="mx-form" markdown="1">

```python
value, ori = max(odf)
```

The global maximum and where it is.

</div>

<div class="mx-form" markdown="1">

```python
values, oris = max(odf, numLocal=5, resolution=5*degree, accuracy=0.25*degree)
```

The five largest local maxima.

</div>

<div class="mx-form" markdown="1">

```python
f = max(odf1, odf2)
```

The pointwise maximum of two functions.

</div>

<div class="mx-form" markdown="1">

```python
v, pos = max(sF)
```

On the sphere, the direction.

</div>

<div class="mx-form" markdown="1">

```python
values, positions = max(sF, numLocal=3)
```

Three local maxima on the sphere.

</div>

<div class="mx-form" markdown="1">

```python
sF = max(sF, 0.5)
```

The pointwise maximum with a number.

</div>

## Description

The local maxima are searched from a grid of the spacing resolution (5 degree on SO(3), 2.5
on the sphere) and refined down to accuracy (0.25 and 0.05 degree); the keywords
resolution, accuracy and, on SO(3), startingNodes, the orientations to start from, go to
that search. Maxima closer than the resolution are merged, so fewer than numLocal can come
back. A function on the circle and a pole figure take their own max. Where MATLAB writes
max(SO3F, [], dim), the port writes max(SO3F, axis=dim - 1).

## Input

| `f` | SO3Fun, S2Fun or S1Fun; a second function or a number for the pointwise maximum |

## Keywords

| keyword | default | description |
|---|---|---|
| `numLocal` | `1` | the number of local maxima returned |

## Output

| `value` | the largest value, or numLocal values in descending order |
| `ori` | the position: orientation, vector3d, or the angle on the circle |

## See also

[min](S1Grid.min_py.html), [calcComponents](SO3Fun.calcComponents_py.html), [SO3FunHarmonic.mean](SO3FunHarmonic.mean_py.html)

MATLAB's [SO3FunHarmonic.max](SO3FunHarmonic.max.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L708">source</a></font>
{% endraw %}
