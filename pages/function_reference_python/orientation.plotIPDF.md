---
title: 'orientation.plotIPDF'
sidebar: function_reference_sidebar
permalink: orientation.plotIPDF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.plotIPDF.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

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

An inverse pole figure shows which crystal directions, with all their equivalents folded
into the fundamental sector of the crystal, point along the specimen direction r. For an
ODF it is the density odf.radon(r=r), drawn with the keywords of a spherical function:
contourf, contour, pcolor, colorRange, resolution, antipodal, complete. For a list of
orientations the crystal directions are drawn as markers, coloured by a value or an RGB
colour per orientation when one is given, or, with contourf=True or another filled
style, as their density. A large list is thinned to a random selection, about 100000
markers divided by the order of the symmetries. A fibre is drawn as the dots of 1000
orientations along it. MATLAB's points='all' is all=True.

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

MATLAB's [orientation.plotIPDF](orientation.plotIPDF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polefigureplot.py#L271">source</a></font>
{% endraw %}
