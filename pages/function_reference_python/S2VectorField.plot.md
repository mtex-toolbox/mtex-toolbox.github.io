---
title: 'S2VectorField.plot'
sidebar: function_reference_sidebar
permalink: S2VectorField.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2VectorField.plot.html
status: Reference
---
{% raw %}
A method of [S2VectorFieldHarmonic](S2VectorFieldHarmonic_index_py.html).

plot(x, ...) draws x as its kind is drawn; the page of each class's plot has its keywords

## Syntax

Directions on the sphere: markers, coloured, arrows w:

```python
plot(v), plot(v, data), plot(v, rgb), plot(v, w)
```

A function on the sphere, a vector or axis field, a region:

```python
plot(sF), plot(vF), plot(sR)
```

Maps: pixels, grain polygons, boundaries, triple points:

```python
plot(ebsd), plot(grains), plot(gB), plot(tP)
```

ODF sections, the ODF along a fibre, a section layout:

```python
plot(odf), plot(odf, f), plot(oS)
```

Orientations, fibres and regions in orientation space:

```python
plot(ori), plot(f), plot(oR)
```

Pole figures, the symmetry elements, a colour key:

```python
plot(pf), plot(cs), plot(key)
```

Circle functions, shapes, crystal shapes, planes:

```python
plot(sF1), plot(shape), plot(cS), plot(plane)
```

A tensor by its directional magnitude:

```python
plot(T)
```

On the sphere the flags contourf, contour, pcolor and smooth draw the density of the
directions or the interpolant of their data.

## Signature

```python
S2VectorFieldHarmonic.plot(v, *args, **kw)
```

MATLAB's [S2VectorField.plot](S2VectorField.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L590">source</a></font>
{% endraw %}
