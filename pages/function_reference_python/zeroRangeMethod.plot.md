---
title: 'zeroRangeMethod.plot'
sidebar: function_reference_sidebar
permalink: zeroRangeMethod.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: zeroRangeMethod.plot.html
status: Reference
---
{% raw %}
plot(x, ...) draws x as its kind is drawn; the page of each class's plot has its keywords

## Syntax

```python
plot(v, *args, **kw)
```

```python
plot(v), plot(v, data), plot(v, rgb), plot(v, w)  # directions on the sphere: markers, coloured, arrows w
plot(sF), plot(vF), plot(sR)                      # a function on the sphere, a vector or axis field, a region
plot(ebsd), plot(grains), plot(gB), plot(tP)      # maps: pixels, grain polygons, boundaries, triple points
plot(odf), plot(odf, f), plot(oS)                 # ODF sections, the ODF along a fibre, a section layout
plot(ori), plot(f), plot(oR)                      # orientations, fibres and regions in orientation space
plot(pf), plot(cs), plot(key)                     # pole figures, the symmetry elements, a colour key
plot(sF1), plot(shape), plot(cS), plot(plane)     # circle functions, shapes, crystal shapes, planes
plot(T)                                           # a tensor by its directional magnitude
```

On the sphere the flags contourf, contour, pcolor and smooth draw the density of the
directions or the interpolant of their data.

MATLAB's [zeroRangeMethod.plot](zeroRangeMethod.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L590">source</a></font>
{% endraw %}
