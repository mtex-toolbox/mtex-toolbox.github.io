---
title: 'Reference frames and layouts'
sidebar: function_reference_sidebar
permalink: referenceFrames_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: referenceFrames_index.html
status: Reference
---
{% raw %}
Coordinate frames, crystal axes and array layouts used to express directions, orientations and measurement positions.

| Class or function | Description |
| --- | --- |
| [referenceFrame](referenceFrame_index_py.html) | a reference frame, the coordinate system data is expressed in: an identity, a basis, the point group the data is invariant under and the default plotting convention |
| [crystalFrame](crystalFrame_index_py.html) | the reference frame glued to the lattice basis of a phase, with the point group of the crystal |
| [specimenFrame](specimenFrame_index_py.html) | the reference frame a sample is expressed in, with the sample symmetry it claims |
| [notIndexedFrame](notIndexedFrame_index_py.html) | the frame of the measurements that could not be indexed, a phase of a map without basis, group or colour |
| [gridLayout](gridLayout_index_py.html) | the order a grid is stored in: the directions of the specimen its row index and its column index advance along |
| [crystalAxes](crystalAxes_py.html) | the crystal axes a, b, c in Cartesian coordinates, from the cell of a lattice |
| [reciprocalAxes](reciprocalAxes_py.html) | compute reciprocal basis vectors from a direct crystal basis |
| [layoutIndex](gridLayout.layoutIndex_py.html) | the index that lays out an array whose first and second index run along d = (d1, d2) as gL asks, new[r, c] = old.flat[lin[r, c]] |
| [alignmentSetups](alignmentSetups_py.html) | the twelve alignment pairs ['X\|\|a', 'Z\|\|b*'], .. |
| [closestAlignment](closestAlignment_py.html) | the alignment setup a crystal frame is reported in: of the twelve setups the one whose frame lies nearest its basis |
| [align](align_py.html) | the orientation two frames stand in by their axes, MATLAB's orientation.align |
| [byScreenAlignment](byScreenAlignment_py.html) | the orientation implied by two frames rendering alike: a point at v renders at inv(rot) * v in screen coordinates, so vB = rotB * inv(rotA) * vA |
{% endraw %}
