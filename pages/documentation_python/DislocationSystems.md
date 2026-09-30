---
title: 'Dislocation Systems'
sidebar: documentation_sidebar
permalink: DislocationSystems_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: DislocationSystems.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/DislocationSystems.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Plasticity/DislocationSystems.py">edit page</a></font>

<!--introduction-->

Plastic deformation in a crystal is carried by dislocations moving through
its regular atomic lattice. A *dislocation* is a line defect rather than a
microscopic displacement by itself.

Two vectors describe its geometry. The Burgers vector $$\mathbf b$$ gives the
lattice translation accumulated around the defect. The line vector
$$\mathbf l$$ gives the direction of the defect line.

MTEX represents a pure edge or screw geometry with a
[`dislocationSystem`](dislocationSystem.dislocationSystem.html). This page
constructs both types and then prepares the systems used to estimate
geometrically necessary dislocations from an EBSD map.

```python
import matplotlib.pyplot as plt
import numpy as np
```

```python
from mtex import *
```

## Edge dislocations

In a pure edge dislocation, the Burgers vector is perpendicular to the line
vector. Start with a cubic crystal frame and two crystal directions.

```python
cs = crystalFrame('432')
bEdge = Miller(1, 1, 0, cs, 'uvw')
bEdge
```

```text
vector3d (432)
  u  v  w
  1  1  0
```

```python
lEdge = Miller(1, -1, -2, cs, 'uvw')
lEdge
```

```text
vector3d (432)
  u   v   w
  1  -1  -2
```

The constructor checks that the two vectors are perpendicular or parallel.
A general mixed dislocation cannot be entered with this constructor.

```python
dSEdge = dislocationSystem(bEdge, lEdge)
dSEdge
```

```text
dislocationSystem
  symmetry         : 432
  edge dislocations: 1
  Burgers vector  line vector  energy  length
       [1  1  0]  [1  -1  -2]       1    1.41
```

The grey arrow is the line vector, along which the defect runs. The red
arrow is the Burgers vector, which gives the lattice shift across it.

```python
arrow3d(1.3 * normalize(vector3d(lEdge)), faceColor=[0.45, 0.45, 0.45])
hold(True)
arrow3d(0.9 * normalize(vector3d(bEdge)), faceColor='red')
plt.axis('off')
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/DislocationSystems-6.png"></center>

Notice that the two arrows meet at a right angle. This orthogonality is the
defining geometric feature of the edge system.

## Screw dislocations

In a pure screw dislocation, the Burgers vector and line vector are
parallel. The same Burgers vector can therefore serve as both inputs.

```python
bScrew = Miller(1, 1, 0, cs, 'uvw')
bScrew
```

```text
vector3d (432)
  u  v  w
  1  1  0
```

```python
lScrew = Miller(1, 1, 0, cs, 'uvw')
lScrew
```

```text
vector3d (432)
  u  v  w
  1  1  0
```

```python
dSScrew = dislocationSystem(bScrew, lScrew)
dSScrew
```

```text
dislocationSystem
  symmetry          : 432
  screw dislocations: 1
  Burgers vector  energy  length
       [1  1  0]       1    1.41
```

Draw the line vector longer so that both arrows remain visible when they
lie on top of one another.

```python
arrow3d(1.3 * normalize(vector3d(lScrew)), faceColor=[0.45, 0.45, 0.45])
hold(True)
arrow3d(0.9 * normalize(vector3d(bScrew)), faceColor='red')
plt.axis('off')
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/DislocationSystems-10.png"></center>

The coincident arrows show that the lattice shift is along the direction in
which the defect runs. This parallelism distinguishes the screw system.

## Build systems from slip systems

A [slip system](SlipSystems_py.html) supplies a Burgers vector and a slip-plane
normal. MTEX converts each slip system into an edge system with a line
direction in the slip plane, and also adds the distinct screw systems.

Here the 12 geometrically distinct FCC slip systems produce 12 edge and 6
screw systems. The `'antipodal'` option identifies opposite shear senses
before the conversion.

```python
sSFcc = symmetrise(slipSystem.fcc(cs), 'antipodal')
dSFcc = dislocationSystem(sSFcc)
[sum(dSFcc.isEdge), sum(dSFcc.isScrew)]
```

```text
[12, 6]
```

The named constructor performs the corresponding conversion for the
standard BCC family. It is a shortcut for constructing and symmetrising
`slipSystem.bcc(cs)`, not for the FCC lines above.

```python
dSBcc = dislocationSystem.bcc(cs)
[sum(dSBcc.isEdge), sum(dSBcc.isScrew)]
```

```text
[48, 4]
```

MTEX uses one half of the cubic slip direction as the Burgers vector during
this conversion. It also uses one third of a hexagonal slip direction.
Other lattices trigger a warning because the physical scale is ambiguous.

## The dislocation tensor

A dislocation system contributes the dyadic tensor
$$\mathbf b\otimes\hat{\mathbf l}$$, where the hat denotes a unit line vector.
This tensor is sometimes described informally as a deformation matrix.
In MTEX it is a basis tensor for the dislocation-density tensor used on the
next page.

```python
dTBcc = dSBcc.tensor()
dTBcc
```

```text
dislocationDensityTensor (432)
  unit: au
  rank: 2 (3 × 3)
  size: 52
```

The tensor has the same length unit as the unit-cell axes because the line
vector is normalized. MTEX labels this unit `au`; for a lattice specified
in Angstrom, its entries are therefore in Angstrom.

The Burgers-vector norm sets the scale of each basis tensor. For the unit
cubic cell used here, a BCC $$\langle111\rangle/2$$ Burgers vector has length
$$\sqrt{3}/2$$.

```python
a = cs.aAxis.norm()
np.array([dSBcc[0].b.norm()[0], dSBcc[-1].b.norm()[0], np.sqrt(3) / 2 * a])
```

```text
array([0.866, 0.866, 0.866])
```

The earlier statement that both BCC and FCC Burgers vectors have length
$$\sqrt{3}a/2$$ is not generally correct. An FCC
$$\langle110\rangle/2$$ Burgers vector has length $$a/\sqrt{2}$$, as this check
shows.

```python
np.array([dSFcc[0].b.norm()[0], a / np.sqrt(2)])
```

```text
array([0.7071, 0.7071])
```

## Set relative line energies

The property `u` stores the relative line energy used when MTEX chooses a
non-negative combination of systems. A directly constructed system has
`u = 1` by default. Conversion from slip systems currently initializes
`u = 2` for edge systems and `u = 1` for screw systems.

Hull and Bacon give the elastic line energies

$$ U_{\mathrm{screw}} = \frac{G b^2}{4\pi}
   \ln\left(\frac{R}{r_0}\right), $$

$$ U_{\mathrm{edge}} = \frac{1}{1-\nu}
   U_{\mathrm{screw}}, $$

where $$G$$ is the shear modulus, $$b$$ is the Burgers-vector length, $$\nu$$ is
Poisson's ratio, $$R$$ is the outer cut-off radius, and $$r_0$$ is the
dislocation-core radius.

If all systems share the other factors, one convenient normalization is
$$U_{\mathrm{edge}}=1$$ and $$U_{\mathrm{screw}}=1-\nu$$.

```python
nu = 0.3
dSBcc.u[dSBcc.isEdge] = 1
dSBcc.u[dSBcc.isScrew] = 1 - nu
```

There is no single accepted way to set these weights. Another model may
use `u = c * G * norm(b)**2`, with a model-dependent constant `c`.
When $$G$$ is a shear modulus, this expression has units of energy per unit
length; earlier wording on this page called it energy per length squared.
Choose `u` for the material and model being compared rather than treating
an MTEX default as a measured energy.

## References

* D. Hull and D. J. Bacon,
  [Introduction to Dislocations](https://doi.org/10.1016/C2009-0-64358-0),
  fifth edition, Butterworth-Heinemann, 2011, derives the edge and screw line
  energies used to motivate the relative weights above.

## Next

Continue with [Geometrically Necessary Dislocations](GND_py.html) to turn an
EBSD orientation gradient into densities of the systems defined here.
{% endraw %}
