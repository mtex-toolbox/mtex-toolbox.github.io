---
title: 'Orientation colour keys'
sidebar: function_reference_sidebar
permalink: orientationColorKeys_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationColorKeys_index.html
status: Reference
---
{% raw %}
Inverse pole figure, Euler-angle, axis-angle and misorientation colour keys for orientation data.

| Class or function | Description |
| --- | --- |
| [orientationColorKey](orientationColorKey_index_py.html) | base class for mapping crystal orientations to RGB colours |
| [BungeColorKey](BungeColorKey_index_py.html) | colour orientations by their three Bunge Euler angles |
| [PatalaColorKey](PatalaColorKey_index_py.html) | the misorientation key of Patala, Mason and Schuh for m-3m, m-3, mmm, 4/mmm and 6/mmm |
| [axisAngleColorKey](axisAngleColorKey_index_py.html) | the rotation from a reference orientation as a colour: its axis in the specimen frame through the key of the whole sphere, its angle through the saturation (Thomsen et al.) |
| [ipfColorKey](ipfColorKey_index_py.html) | colour orientations by the crystal direction parallel to a chosen specimen direction |
| [ipfHKLKey](ipfHKLKey_index_py.html) | the inverse pole figure key of HKL Channel 5, the HKLDirectionKey on the Laue group |
| [ipfHSVKey](ipfHSVKey_index_py.html) | the default MTEX inverse pole figure colour key |
| [ipfSpotKey](ipfSpotKey_index_py.html) | single spots of the inverse pole figure in their own colours |
| [ipfTSLKey](ipfTSLKey_index_py.html) | the inverse pole figure key of TSL / OIM, the TSLDirectionKey on the Laue group |
| [spectralTransmissionColorKey](spectralTransmissionColorKey_index_py.html) | the colour of a thin section of an anisotropic crystal between polariser and analyser: light along the propagation direction of the specimen through a plate of the given thickness in nanometres |
| [spotColorKey](spotColorKey_index_py.html) | highlight selected orientations with colours that fade to white with disorientation |
| [colorGrid](colorGrid_index_py.html) | a direction key evaluated once on a cube map of the sphere at the resolution, its colours then looked up at the node nearest a direction |
| [ipfColors](ipfColors_py.html) | the colour of every measurement of a map, or of every grain, each phase by its own inverse pole figure key |
{% endraw %}
