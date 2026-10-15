---
title: 'Spherical projections'
sidebar: function_reference_sidebar
permalink: sphericalProjections_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalProjections_index.html
status: Reference
---
{% raw %}
Projections that map directions on the sphere to plotting coordinates.

| Class or function | Description |
| --- | --- |
| [sphericalProjection](sphericalProjection_index_py.html) | a projection of the sphere to the plane, restricted to a region and a hemisphere |
| [eangleProjection](eangleProjection_index_py.html) | the equal angle, stereographic, projection: r = tan(theta / 2) |
| [eareaProjection](eareaProjection_index_py.html) | the equal area, Schmidt, projection: r = 2 sin(theta / 2) |
| [edistProjection](edistProjection_index_py.html) | the equidistant projection: r = theta |
| [gnomonicProjection](gnomonicProjection_index_py.html) | the gnomonic projection: r = tan(theta), great circles drawn as straight lines |
| [orthographicProjection](orthographicProjection_index_py.html) | the orthographic projection: r = sin(theta) |
| [plainProjection](plainProjection_index_py.html) | rho over theta in degrees: the polar angles of the frame itself, no convention |
| [makeSphericalProjection](makeSphericalProjection_py.html) | the charts a spherical plot is drawn on, the projection of the region its data cover |
{% endraw %}
