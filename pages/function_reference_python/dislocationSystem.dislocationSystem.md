---
title: 'dislocationSystem.dislocationSystem'
sidebar: function_reference_sidebar
permalink: dislocationSystem.dislocationSystem_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: dislocationSystem.dislocationSystem.html
status: Reference
---
{% raw %}
a Burgers vector with a line vector, edge when orthogonal and screw when parallel; from
slip systems, the edge dislocations of every system and the screw ones of every distinct
Burgers vector. The line energy u is |b|^2 for an edge and 0.7 |b|^2 for a screw
dislocation unless given, the isotropic line energy with Poisson ratio 0.3

## Syntax

<div class="mx-form" markdown="1">

```python
dislocationSystem(b, l=None, u=None)
```

</div>

## Input

| `b` | Burgers vectors, or slipSystem objects from which edge and screw systems are constructed |
| `l` | line directions as vector3d; required when b supplies Burgers vectors |
| `u` | relative line energies; default \|b\|**2 for edge and 0.7*\|b\|**2 for screw systems |

## Used on

[DislocationSystems](DislocationSystems_py.html)

MATLAB's [dislocationSystem.dislocationSystem](dislocationSystem.dislocationSystem.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L625">source</a></font>
{% endraw %}
