---
title: 'SO3FunRBF.plotPDF'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.plotPDF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.plotPDF.html
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

the pole figures of an ODF, one axes per crystal direction; MATLAB's plotPDF

## Syntax

<div class="mx-form" markdown="1">

```python
plotPF(odf, Miller(1, 0, 0, cs))
```

One pole figure.

</div>

<div class="mx-form" markdown="1">

```python
plotPF(odf, [Miller(1, 0, 0, cs), Miller(1, 1, 1, cs)], resolution=2*degree)
```

Two, on a coarser grid.

</div>

<div class="mx-form" markdown="1">

```python
plotPF(odf, h, contourf=True, colorbar=True)
```

Filled contours with a colour bar.

</div>

<div class="mx-form" markdown="1">

```python
plotPF(odf, h, antipodal=True, complete=True)
```

Both hemispheres superposed, the whole sphere.

</div>

<div class="mx-form" markdown="1">

```python
plotPF(odf, h, colorRange='equal', minmax=True)
```

One colour range, extrema marked.

</div>

<div class="mx-form" markdown="1">

```python
plotPF(odf, [h1, h2], superposition=[1, 2])
```

One pole figure of the superposed directions.

</div>

<div class="mx-form" markdown="1">

```python
plotPF(odf, pf.allH, superposition=pf.c)
```

The superposed pole figures of a measurement.

</div>

<div class="mx-form" markdown="1">

```python
plotPF(odf, h, '3d')
```

The pole figure on a sphere in space.

</div>

## Description

Every pole figure is the Radon transform odf.radon(h) of the ODF, the density of the
specimen directions along which h lies. A list of directions draws one axes each, titled by
its indices; title=False leaves them untitled (MATLAB's noTitle).

Each pole figure takes its own colour range; colorRange='equal' gives one for all, a pair
the limits.

superposition gives the structure coefficients of superposed directions:

- one coefficient per direction: all directions make one superposed pole figure.
- a list of coefficient arrays, one per entry of a list of direction sets: one superposed
pole figure per set, as plotPF(odf, pf.allH, superposition=pf.c).

The other keywords are those of the spherical plots: resolution, the styles pcolor,
contourf=True or contour=True with their levels, colorbar, minmax, antipodal, complete,
upper, lower, the projection and the layout.

## Input

| `odf` | SO3Fun |
| `h` | Miller, or a list of Miller, the crystal directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `superposition` | `None` | the structure coefficients of superposed directions, an array or one array per entry of h |

## Output

| `h` | the matplotlib surfaces, one per chart |

## See also

[plotIPF](SO3Fun.plotIPDF_py.html), [plotSection](S2Fun.plotSection_py.html), [annotate](annotate_py.html), [PoleFigure.plot](PoleFigure.plot_py.html), [SphericalProjections](SphericalProjections_py.html)

MATLAB's [SO3FunRBF.plotPDF](SO3FunRBF.plotPDF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L1576">source</a></font>
{% endraw %}
