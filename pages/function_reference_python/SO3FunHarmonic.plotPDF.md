---
title: 'SO3FunHarmonic.plotPDF'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.plotPDF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.plotPDF.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the pole figures of an ODF, one axes per crystal direction; MATLAB's plotPDF

## Syntax

One pole figure:

```python
plotPF(odf, Miller(1, 0, 0, cs))
```

Two, on a coarser grid:

```python
plotPF(odf, [Miller(1, 0, 0, cs), Miller(1, 1, 1, cs)], resolution=2*degree)
```

Filled contours with a colour bar:

```python
plotPF(odf, h, contourf=True, colorbar=True)
```

Both hemispheres superposed, the whole sphere:

```python
plotPF(odf, h, antipodal=True, complete=True)
```

One colour range, extrema marked:

```python
plotPF(odf, h, colorRange='equal', minmax=True)
```

One pole figure of the superposed directions:

```python
plotPF(odf, [h1, h2], superposition=[1, 2])
```

The superposed pole figures of a measurement:

```python
plotPF(odf, pf.allH, superposition=pf.c)
```

The pole figure on a sphere in space:

```python
plotPF(odf, h, '3d')
```

Every pole figure is the Radon transform odf.radon(h) of the ODF, the density of the
specimen directions along which h lies. A list of directions draws one axes each, titled
by its indices (title=False leaves them untitled, MATLAB's noTitle); each takes its own
colour range, colorRange='equal' one for all or a pair the limits. superposition gives
the structure coefficients: with one coefficient per direction the directions make one
superposed pole figure; with a list of coefficient arrays, one per entry of a list of
direction sets, each set one. The other keywords are those of the spherical plots:
resolution, the styles pcolor, contourf=True or contour=True with their levels, colorbar,
minmax, antipodal, complete, upper, lower, the projection and the layout.

## Input

| | |
|---|---|
| `odf` | SO3Fun |
| `h` | Miller, or a list of Miller, the crystal directions |

## Output

| | |
|---|---|
| `h` | the matplotlib surfaces, one per chart |

## Keywords

| | default | |
|---|---|---|
| `superposition` | `None` | the structure coefficients of superposed directions, an array or one array per entry of h |

## See also

[plotIPF](SO3Fun.plotIPDF_py.html), [plotSection](S2Fun.plotSection_py.html), [annotate](annotate_py.html), [PoleFigure.plot](PoleFigure.plot_py.html), [SphericalProjections](SphericalProjections_py.html)

MATLAB's [SO3FunHarmonic.plotPDF](SO3FunHarmonic.plotPDF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L1563">source</a></font>
{% endraw %}
