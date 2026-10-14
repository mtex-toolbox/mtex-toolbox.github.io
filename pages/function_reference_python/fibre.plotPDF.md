---
title: 'fibre.plotPDF'
sidebar: function_reference_sidebar
permalink: fibre.plotPDF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.plotPDF.html
status: Reference
---
{% raw %}
pole figures, one per crystal direction: of an ODF, of a list of orientations or of a
measured PoleFigure; MATLAB's plotPDF

## Syntax

The pole figures of an ODF, h a list of Miller:

```python
plotPF(odf, h)
```

One pole figure, the superposition of h:

```python
plotPF(odf, h, superposition=[0.5, 0.5])
```

The poles of orientations as markers:

```python
plotPF(ori, h)
```

The markers coloured by a value per orientation:

```python
plotPF(ori, ori.angle(), h)
```

The density of the poles, filled contours:

```python
plotPF(ori, h, contourf=True, antipodal=True)
```

At most 50 orientations drawn:

```python
plotPF(ori, h, points=50)
```

Every orientation drawn:

```python
plotPF(ori, h, all=True)
```

A fibre as the curve of its poles:

```python
plotPF(f, Miller(1, 0, 0, f.CS))
```

A measured pole figure:

```python
plotPF(pf)
```

A pole figure shows where the crystal direction h, with every equivalent of it, points in
the specimen. For an ODF it is the density of these poles, the Radon transform odf.radon(h),
drawn with the keywords of a spherical function: contourf, contour, pcolor, colorRange
('equal' for one range over all pole figures, each its own by default), resolution,
antipodal (both hemispheres superposed), complete, upper and lower. A positional '3d' draws
it on the sphere in space.

For a list of orientations every orientation is applied to every equivalent of h and the
poles are drawn as markers on the specimen sector, coloured by a value or an RGB colour per
orientation when one is given; contourf=True or another filled style draws their density.
A large list is thinned to a random selection, about 10000 markers by default. A fibre is
drawn as the dots of 1000 orientations along it. Into held pole figures, or with
add2all=True, the poles of the directions already shown are added.

A measured PoleFigure draws its intensities as markers, or, with a filled style, the
function its harmonic expansion gives.

## Input

| | |
|---|---|
| `odf` | SO3Fun, an ODF |
| `ori` | orientation, or a fibre |
| `data` | a value or an RGB colour per orientation, optional |
| `h` | Miller or a list of Miller, the crystal directions, one pole figure each |
| `pf` | PoleFigure, measured pole figures |

## Keywords

| | default | |
|---|---|---|
| `points` | `None` | the number of orientations drawn at most, a random selection |
| `all` | `False` | draw every orientation, however many |
| `superposition` | `None` | the weights of the directions h in one superposed pole figure, a list of arrays for one superposed pole figure per entry of h, as plotPF(odf, pf.allH, superposition=pf.c) |

## See also

[plotIPF](SO3Fun.plotIPDF_py.html), SO3Fun.radon, [PoleFigure](PoleFigure_index_py.html), [calcPoleFigure](SO3Fun.calcPoleFigure_py.html), [annotate](annotate_py.html), [ODFPoleFigure](ODFPoleFigure_py.html), [OrientationPoleFigure](OrientationPoleFigure_py.html), [PoleFigurePlot](PoleFigurePlot_py.html)

## Used on

[CrystalReferenceSystem](CrystalReferenceSystem_py.html), [OrientationFibre](OrientationFibre_py.html), [OrientationGrid](OrientationGrid_py.html), [OrientationImport](OrientationImport_py.html), [OrientationPoleFigure](OrientationPoleFigure_py.html), [OrientationStandard](OrientationStandard_py.html), [OrientationSymmetry](OrientationSymmetry_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [EBSDOrientationPlots](EBSDOrientationPlots_py.html), [EBSDReferenceFrame](EBSDReferenceFrame_py.html)

MATLAB's [fibre.plotPDF](fibre.plotPDF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polefigureplot.py#L198">source</a></font>
{% endraw %}
