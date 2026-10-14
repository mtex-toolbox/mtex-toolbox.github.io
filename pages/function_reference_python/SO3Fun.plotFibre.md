---
title: 'SO3Fun.plotFibre'
sidebar: function_reference_sidebar
permalink: SO3Fun.plotFibre_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.plotFibre.html
status: Reference
---
{% raw %}
the ODF along the fibre f, as a line over the angle along the fibre; MATLAB's plotFibre

## Syntax

<div class="mx-form" markdown="1">

```python
odf = SantaFe()
f = fibre.gamma(odf.CS, odf.SS)
```

</div>

<div class="mx-form" markdown="1">

```python
plotFibre(odf, f)
```

The values along the gamma fibre.

</div>

<div class="mx-form" markdown="1">

```python
plotFibre(odf, f, points=200, lineWidth=3, color='r')
```

Fewer points, a thick red line.

</div>

<div class="mx-form" markdown="1">

```python
plotFibre([odf1, odf2], f)
```

One line per function.

</div>

## Description

The fibre is sampled at equally spaced orientations and the ODF evaluated there, the real
part drawn against the angle along the fibre from 0 to 360 degree, in mrd. A held figure
takes the line into its last axes, so that several functions can be compared along one
fibre. A fibre of other frames than the function's is followed by its rotations, as MATLAB
does. The other keywords are those of a line plot. MATLAB returns the values and the angles;
the port returns the line.

## Input

| `odf` | SO3Fun, or a list of them |
| `f` | fibre |

## Keywords

| keyword | default | description |
|---|---|---|
| `points` | `1000` | the number of orientations along the fibre, MATLAB's resolution |
| `lineWidth` | `1.5` | the width of the line |

## Output

| `h` | the matplotlib lines drawn |

## See also

[fibre](fibre_index_py.html), [plotSection](S2Fun.plotSection_py.html), [eval](S1FunHandle.eval_py.html)

## Used on

[OrientationFibre](OrientationFibre_py.html), [ODFPoleFigure](ODFPoleFigure_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [SO3Fun.plotFibre](SO3Fun.plotFibre.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/fibreplot.py#L17">source</a></font>
{% endraw %}
