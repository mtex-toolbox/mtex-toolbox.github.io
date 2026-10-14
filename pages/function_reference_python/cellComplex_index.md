---
title: 'The class cellComplex'
sidebar: function_reference_sidebar
permalink: cellComplex_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the spatial decomposition of a map, one cell per site: the vertices V, the vertex pair F and
the site pair of every face, the sites and the lattice

## Members

| [nSites](cellComplex.nSites_py.html) | the number of sites, the measurements, the holes and the outer rings |
| [site2pixel](cellComplex.site2pixel_py.html) | the measurement of every site, NO_PIXEL where it has none, and the index of every site |
| [siteAt](cellComplex.siteAt_py.html) | the site whose cell covers a point: its nearest site, since a cell is the set of points nearer to its site than to any other, searched over the lattice cells around the point |
| [siteIJ](cellComplex.siteIJ_py.html) | the lattice indices of the sites |
| [unitCell2d](cellComplex.unitCell2d_py.html) | the corners of one lattice cell in the plane's coordinates |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/decomposition.py#L45">source</a></font>
{% endraw %}
