---
title: 'The class lattice'
sidebar: function_reference_sidebar
permalink: lattice_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the lattice an EBSD map is measured on: the basis of the two shortest translations, the cell
shape 'square' or 'hex', the plane and the integer index of every position, inferred from the
positions or fitted to a known basis

## Syntax

<div class="mx-form" markdown="1">

```python
l = lattice(pos)
l = lattice(pos, basis=(A, 'hex'))
```

</div>

## Members

| [dxy](lattice.dxy_py.html) | the representative spacing: the mean length of the two basis vectors |
| [moved](lattice.moved_py.html) | the same lattice after the rigid motion x -> R x + v, in the plane the moved positions lie in: the index kept, the basis and the origin turned in the plane |
| [position](lattice.position_py.html) | the physical position of indices of shape (..., 2), exactly as the ideal lattice places them |
| [stencil](lattice.stencil_py.html) | the index offsets of the neighbours of a cell, four for a square lattice and six for a hexagonal one |
| [subset](lattice.subset_py.html) | the same lattice on a subset of its sites, the index counted from the least one kept |
| [unitCell](lattice.unitCell_py.html) | the corners of the cell around a site, relative to it, anticlockwise, shape (k, 3) |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/lattice.py#L99">source</a></font>
{% endraw %}
