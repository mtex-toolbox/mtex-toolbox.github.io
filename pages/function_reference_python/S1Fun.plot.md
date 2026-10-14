---
title: 'S1Fun.plot'
sidebar: function_reference_sidebar
permalink: S1Fun.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Fun.plot.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

plot of a function on the circle, its values as the radius of a polar line; MATLAB's
S1Fun/plot

## Syntax

<div class="mx-form" markdown="1">

```python
h = plot(sF1)
```

A polar line over the angle.

</div>

<div class="mx-form" markdown="1">

```python
h = plot(sF1, '--', color='r')
```

A line style and a colour.

</div>

<div class="mx-form" markdown="1">

```python
h = plot(sF1, polar=False)
```

The values over the angle in [0, 2 pi].

</div>

<div class="mx-form" markdown="1">

```python
h = plot(sF1, lineWidth=2, displayName='f')
```

A wider line named in the legend.

</div>

## Description

The function is evaluated at 361 angles from 0 to 2 pi; a complex function shows its real
part. A positional string is matplotlib's format, MATLAB's line style. An axes the user made
with plt.subplot takes the line, as MATLAB's subplot does, and a held figure the next line;
further keywords go to matplotlib's plot.

## Input

| `sF1` | S1FunHarmonic, a function on the circle |

## Keywords

| keyword | default | description |
|---|---|---|
| `lineWidth` | `1.0` | the width of the line in points |
| `displayName` | `None` | the name of the line in a legend |
| `color` | `None` | the colour of the line, a name or an RGB triple |
| `polar` | `True` | draw in polar coordinates, the radius the value; False draws the values over the angle in Cartesian axes, MATLAB's 'notPolar' |
| `how2plot` | `None` | the plotting convention that places the angle 0 and the sense of rotation |

## Output

| `h` | matplotlib Line2D, the line drawn |

## See also

[S1FunHarmonic](S1FunHarmonic_index_py.html), [plotSection](S2Fun.plotSection_py.html), [S1FunHarmonics](S1FunHarmonics_py.html)

MATLAB's [S1Fun.plot](S1Fun.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polarplot.py#L147">source</a></font>
{% endraw %}
