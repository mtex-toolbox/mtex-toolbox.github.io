---
title: 'The class boundaryNetwork'
sidebar: function_reference_sidebar
permalink: boundaryNetwork_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the network the smoothing runs on: only the vertices the boundaries use, their neighbours
in compressed form, and which of them may not move. The pool of vertices a boundary
indexes into is the whole cell complex, most of which no segment touches; compressing
first is what keeps the sparse system the size of the boundary and not of the map

## Members

| [byArrays](boundaryNetwork.byArrays_py.html) | a network given by its arrays, the neighbours of vertex i being nbr[ptr[i]:ptr[i + 1]] |
| [degree](boundaryNetwork.degree_py.html) | the number of neighbours of every vertex of the network |
| [laplacian](boundaryNetwork.laplacian_py.html) | the normalised Laplacian D^-1 A - I of the network, as a sparse matrix |
| [neighbors](boundaryNetwork.neighbors_py.html) | the neighbours of vertex i, indices into the network's vertices |
| [numNeighbors](boundaryNetwork.numNeighbors_py.html) | the number of neighbours of vertex i |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/smoothing.py#L41">source</a></font>
{% endraw %}
