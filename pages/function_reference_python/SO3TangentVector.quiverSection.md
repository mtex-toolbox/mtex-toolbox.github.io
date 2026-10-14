---
title: 'SO3TangentVector.quiverSection'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.quiverSection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.quiverSection.html
status: Reference
---
{% raw %}
arrows on a section plot: of a function on the sphere along one of its circles, or at
orientations in the sections of orientation space; MATLAB's S2Fun/quiverSection

## Syntax

<div class="mx-form" markdown="1">

```python
quiverSection(sF, vF, zvector)
```

The field vF along the circle normal to z.

</div>

<div class="mx-form" markdown="1">

```python
quiverSection(sF, vF, zvector, np.pi/3)
```

Along the small circle at 60 degree from z.

</div>

<div class="mx-form" markdown="1">

```python
quiverSection(sF, vF, zvector, normalized=True)
```

Every vector of the same length.

</div>

<div class="mx-form" markdown="1">

```python
quiverSection(ori, xvector)
```

An arrow along x at every orientation.

</div>

<div class="mx-form" markdown="1">

```python
quiverSection(ori, w, color='r', resolution=5*degree)
```

A direction per orientation.

</div>

## Description

With a function on the sphere sF, a vector field vF, S2VectorField, S2AxisField or a
function of the directions, is evaluated at 36 points of the circle normal to sec, or of
the small circle at the polar angle eta from sec, and the vectors are drawn at the ring that
plotSection(sF, sec) draws, the points pushed out to the values of sF and seen down sec. The
longest arrow is scaled to the spacing of the points (autoScaleFactor=0.9); an axis field
draws segments without heads. This form also takes displayName and how2plot.

With orientations, the arrows go into the sections of the current section plot, which
plotSection draws first: at every orientation, in the section it lies in, an arrow along
the specimen direction w, one for all or one per orientation.

## Input

| `sF` | S2Fun, the function whose section is drawn |
| `vF` | S2VectorField, S2AxisField, a vector3d per point of the circle, or a function |
| `sec` | vector3d, the normal of the section |
| `eta` | the polar angle of the circle from sec, optional, pi/2 the great circle |
| `ori` | orientation, on a section plot |
| `w` | vector3d, a specimen direction for all or one per orientation |

## Keywords

| keyword | default | description |
|---|---|---|
| `color` | `'k'` | the colour of the arrows |
| `lineWidth` | `1.0` | the width of the arrows |
| `resolution` | `10*degree` | the spacing the arrows are scaled to, an angle: every arrow is half of it long (orientations only) |

## See also

[plotSection](S2Fun.plotSection_py.html), [quiver](ODFSections.quiver_py.html), [S2FunHarmonic.grad](S2FunHarmonic.grad_py.html), [S2FunVectorField](S2FunVectorField_py.html), [OrientationVisualizationSections](OrientationVisualizationSections_py.html)

## Used on

[WaveVelocities](WaveVelocities_py.html)

MATLAB's [SO3TangentVector.quiverSection](SO3TangentVector.quiverSection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L309">source</a></font>
{% endraw %}
