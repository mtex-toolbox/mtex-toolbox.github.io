---
title: 'S1Grid.min'
sidebar: function_reference_sidebar
permalink: S1Grid.min_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Grid.min.html
status: Reference
---
{% raw %}
the minimum of a function on SO(3) or the sphere, the value and the position, numLocal local minima;
with a second function or a number the pointwise minimum; with axis= along an axis of a list;
MATLAB's min

## Syntax

<div class="mx-form" markdown="1">

```python
value, ori = min(odf)
```

The global minimum and where it is.

</div>

<div class="mx-form" markdown="1">

```python
values, oris = min(odf, numLocal=3)
```

Three local minima.

</div>

<div class="mx-form" markdown="1">

```python
f = min(odf, 0)
```

The pointwise minimum with a number.

</div>

## Description

The minimum is the maximum of -f, the keywords resolution, accuracy and startingNodes as
for max.

## Input

| `f` | SO3Fun, S2Fun or S1Fun; a second function or a number for the pointwise minimum |

## Keywords

| keyword | default | description |
|---|---|---|
| `numLocal` | `1` | the number of local minima returned |

## Output

| `value` | the smallest value, or numLocal values in ascending order |
| `ori` | the position: orientation, vector3d, or the angle on the circle |

## See also

[max](S1Grid.max_py.html)

MATLAB's [S1Grid.min](S1Grid.min.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L761">source</a></font>
{% endraw %}
