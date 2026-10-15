---
title: 'Directional colour keys'
sidebar: function_reference_sidebar
permalink: directionColorKeys_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: directionColorKeys_index.html
status: Reference
---
{% raw %}
Colour keys that assign RGB colours to crystal or specimen directions.

| Class or function | Description |
| --- | --- |
| [directionColorKey](directionColorKey_index_py.html) | base class for assigning colours to directions with crystal symmetry |
| [HKLDirectionKey](HKLDirectionKey_index_py.html) | the HKL vendor key on the Laue group: the three primaries blended linearly over the polar angle and the azimuth of the fundamental sector |
| [HSVDirectionKey](HSVDirectionKey_index_py.html) | MTEX's default direction key: white at the centre of the fundamental sector, the primary colours at its vertices |
| [TSLDirectionKey](TSLDirectionKey_index_py.html) | the vendors' keys, both on the Laue group whatever the frame carries (MATLAB TSLDirectionKey, HKLDirectionKey): TSL reads the polar coordinates of the sector from its centre, unfolded and without the hue correction |
| [spotDirectionKey](spotDirectionKey_index_py.html) | each centre, a crystal direction, given its colour, fading to white with the kernel of the angular distance to the nearest symmetric equivalent |
| [sphereColor](sphereColor_py.html) | the colour of a point of the colour sphere, the hue from the azimuth and the lightness from the radius |
| [regionCenter](regionCenter_py.html) | the centre of a region (MATLAB @sphericalRegion/center): the pole of a single circle, the bisector of the two boundaries furthest apart for a lune, the barycentre of the vertices of a triangle, and the area centroid of anything larger |
| [sectorFolds](sectorFolds_py.html) | the folds of a group's sector, in the order they are applied |
| [hasSmoothKey](hasSmoothKey_py.html) | a group whose sector neither is bounded by its own mirrors nor folds onto such a half has no continuous one to one key |
| [polarCoordinates](sphericalRegion.polarCoordinates_py.html) | polar coordinates of a region (MATLAB @sphericalRegion/polarCoordinates), which is what a colour key is built on: the radius is one at the centre and zero on the boundary, taken along the great circle through the centre, and the azimuth is measured about the centre from a reference direction and then equalised, so that a wide part of the sector takes as much of the turn as a narrow one and the vertices sit at equal angles |
{% endraw %}
