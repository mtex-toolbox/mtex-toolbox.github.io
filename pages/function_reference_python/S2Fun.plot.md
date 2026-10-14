---
title: 'S2Fun.plot'
sidebar: function_reference_sidebar
permalink: S2Fun.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Fun.plot.html
status: Reference
---
{% raw %}
plot(x, ...) draws x as its kind is drawn; the page of each class's plot has its keywords

## Syntax

<div class="mx-form" markdown="1">

```python
plot(v), plot(v, data), plot(v, rgb), plot(v, w)
```

Directions on the sphere: markers, coloured, arrows w.

</div>

<div class="mx-form" markdown="1">

```python
plot(sF), plot(vF), plot(sR)
```

A function on the sphere, a vector or axis field, a region.

</div>

<div class="mx-form" markdown="1">

```python
plot(ebsd), plot(grains), plot(gB), plot(tP)
```

Maps: pixels, grain polygons, boundaries, triple points.

</div>

<div class="mx-form" markdown="1">

```python
plot(odf), plot(odf, f), plot(oS)
```

ODF sections, the ODF along a fibre, a section layout.

</div>

<div class="mx-form" markdown="1">

```python
plot(ori), plot(f), plot(oR)
```

Orientations, fibres and regions in orientation space.

</div>

<div class="mx-form" markdown="1">

```python
plot(pf), plot(cs), plot(key)
```

Pole figures, the symmetry elements, a colour key.

</div>

<div class="mx-form" markdown="1">

```python
plot(sF1), plot(shape), plot(cS), plot(plane)
```

Circle functions, shapes, crystal shapes, planes.

</div>

<div class="mx-form" markdown="1">

```python
plot(T)
```

A tensor by its directional magnitude.

</div>

## Description

On the sphere the flags contourf, contour, pcolor and smooth draw the density of the
directions or the interpolant of their data.

## Signature

<div class="mx-form" markdown="1">

```python
plot(v, *args, **kw)
```

</div>

MATLAB's [S2Fun.plot](S2Fun.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L599">source</a></font>
{% endraw %}
