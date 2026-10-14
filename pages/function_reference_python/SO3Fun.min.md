---
title: 'SO3Fun.min'
sidebar: function_reference_sidebar
permalink: SO3Fun.min_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.min.html
status: Reference
---
{% raw %}
the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima;
with a second function or a number the pointwise minimum; with axis= along an axis of a list;
MATLAB's min

## Syntax

The global minimum and where it is:

```python
value, ori = min(odf)
```

Three local minima:

```python
values, oris = min(odf, numLocal=3)
```

The pointwise minimum with a number:

```python
f = min(odf, 0)
```

The minimum is the maximum of -f, the keywords resolution, accuracy and startingNodes as
for max.

## Input

| | |
|---|---|
| `f` | SO3Fun, S2Fun or S1Fun; a second function or a number for the pointwise minimum |

## Output

| | |
|---|---|
| `value` | the smallest value, or numLocal values in ascending order |
| `ori` | the position: orientation, vector3d, or the angle on the circle |

## Keywords

| | default | |
|---|---|---|
| `numLocal` | `1` | the number of local minima returned |

## See also

[max](S1Grid.max_py.html)

MATLAB's [SO3Fun.min](SO3Fun.min.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L739">source</a></font>
{% endraw %}
