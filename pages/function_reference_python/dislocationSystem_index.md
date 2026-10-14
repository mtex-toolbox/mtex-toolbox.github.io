---
title: 'The class dislocationSystem'
sidebar: function_reference_sidebar
permalink: dislocationSystem_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: dislocationSystem_index.html
status: Reference
---
{% raw %}
a Burgers vector with a line vector, edge when orthogonal and screw when parallel; from
slip systems, the edge dislocations of every system and the screw ones of every distinct
Burgers vector. The line energy u is |b|^2 for an edge and 0.7 |b|^2 for a screw
dislocation unless given, the isotropic line energy with Poisson ratio 0.3

## Members

| [bcc](dislocationSystem.bcc_py.html) | the edge and screw dislocations of the symmetrised body-centred cubic slip systems |
| [cat](dislocationSystem.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [CS](dislocationSystem.CS_py.html) | the crystal frame of the systems, None once they are in specimen coordinates |
| [dislocationSystem](dislocationSystem.dislocationSystem_py.html) | a Burgers vector with a line vector, edge when orthogonal and screw when parallel |
| [fcc](dislocationSystem.fcc_py.html) | the edge and screw dislocations of the symmetrised face-centred cubic slip systems |
| [frame](dislocationSystem.frame_py.html) | the frame the Burgers and line vectors are written in |
| [hcp](dislocationSystem.hcp_py.html) | there is no hcp default: raises an error naming the hexagonal families to choose from |
| [isEdge](dislocationSystem.isEdge_py.html) | which systems are edge dislocations, the line vector orthogonal to the Burgers vector |
| [isScrew](dislocationSystem.isScrew_py.html) | which systems are screw dislocations, the line vector parallel to the Burgers vector |
| [rotate](dislocationSystem.rotate_py.html) | an orientation carries the systems into the specimen, broadcast as NumPy does: a column of orientations times a row of systems is MATLAB's outer ori * dS |
| [shape](dislocationSystem.shape_py.html) | a list, or an array once a column of orientations has rotated a row of systems |
| [size](dislocationSystem.size_py.html) | the number of dislocation systems |
| [subsref](dislocationSystem.subsref_py.html) |  |
| [tensor](dislocationSystem.tensor_py.html) | the dislocation density tensor of every system, b (x) l^, in the length unit of the axes |

## Used on

[DislocationSystems](DislocationSystems_py.html)

MATLAB's [dislocationSystem_index](dislocationSystem_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L612">source</a></font>
{% endraw %}
