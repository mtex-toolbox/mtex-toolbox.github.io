---
title: 'fibre.plotIPDF'
sidebar: function_reference_sidebar
permalink: fibre.plotIPDF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.plotIPDF.html
status: Reference
---
{% raw %}
inverse pole figures, one per specimen direction: of an ODF or of a list of orientations;
MATLAB's plotIPDF

## Syntax

<div class="mx-form" markdown="1">

```python
plotIPF(odf, [xvector, zvector])
```

The inverse pole figures of an ODF.

</div>

<div class="mx-form" markdown="1">

```python
plotIPF(odf, zvector, antipodal=True, complete=True)
```

Over the whole sphere.

</div>

<div class="mx-form" markdown="1">

```python
plotIPF(ori, [xvector, zvector])
```

The crystal directions as markers.

</div>

<div class="mx-form" markdown="1">

```python
plotIPF(ori, ori.angle(), r)
```

The markers coloured by a value per orientation.

</div>

<div class="mx-form" markdown="1">

```python
plotIPF(ori, r, points=100)
```

At most 100 orientations drawn.

</div>

<div class="mx-form" markdown="1">

```python
plotIPF(ori, r, all=True)
```

Every orientation drawn.

</div>

<div class="mx-form" markdown="1">

```python
plotIPF(ori, r, contourf=True)
```

The density of the directions, filled contours.

</div>

## Description

An inverse pole figure shows which crystal directions point along the specimen direction r,
all their equivalents folded into the fundamental sector of the crystal. What is drawn
depends on the first argument:

- an ODF: the density odf.radon(r=r), drawn with the keywords of a spherical function,
contourf, contour, pcolor, colorRange, resolution, antipodal, complete.
- a list of orientations: the crystal directions as markers, coloured by a value or an RGB
colour per orientation when one is given; with contourf=True or another filled style, their
density.
- a fibre: the dots of 1000 orientations along it.

A large list of orientations is thinned to a random selection of about 100000 markers
divided by the order of the symmetries; points sets another number, all=True keeps every
orientation (MATLAB's points='all').

## Input

| `odf` | SO3Fun, an ODF |
| `ori` | orientation, or a fibre |
| `data` | a value or an RGB colour per orientation, optional |
| `r` | vector3d or a list of them, the specimen directions, one inverse pole figure each |

## Keywords

| keyword | default | description |
|---|---|---|
| `points` | `None` | the number of orientations drawn at most, a random selection |
| `all` | `False` | draw every orientation, however many |

## See also

[plotPF](SO3Fun.plotPDF_py.html), [ipfColorKey](ipfColorKey_index_py.html), [inversePoles](inversePoles_py.html), [SO3Fun.radon](SO3FunBingham.radon_py.html), [PlotTypes](PlotTypes_py.html)

## Used on

[OrientationFibre](OrientationFibre_py.html), [OrientationInversePoleFigure](OrientationInversePoleFigure_py.html), [OrientationStandard](OrientationStandard_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDIPFMap](EBSDIPFMap_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [EBSDOrientationPlots](EBSDOrientationPlots_py.html), [EBSDProfile](EBSDProfile_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [ODFInversePoleFigure](ODFInversePoleFigure_py.html), [ParentChildVariants](ParentChildVariants_py.html), [Annotations](Annotations_py.html)

MATLAB's [fibre.plotIPDF](fibre.plotIPDF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polefigureplot.py#L293">source</a></font>
{% endraw %}
