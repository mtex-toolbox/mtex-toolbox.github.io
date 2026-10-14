---
title: 'EBSD.gradient'
sidebar: function_reference_sidebar
permalink: EBSD.gradient_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.gradient.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the derivative of the orientation along the two axes of the plane of the map, per unit
length, as a pair of framed vectors; or along a direction of the specimen, which has
none where it leaves the plane. The stencil says which neighbours it is taken from: the
one sided difference along the two lattice directions, stepping backwards only where the
map ends and NaN where the neighbour it asks for is missing inside the map; the whole
stencil of the lattice, the central difference in the interior; or the same with the
diagonals. A pixel whose neighbours do not span two directions has none, and is NaN

## Syntax

```python
EBSD.gradient(ebsd, direction=None, stencil='oneSided')
```

MATLAB's [EBSD.gradient](EBSD.gradient.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L152">source</a></font>
{% endraw %}
