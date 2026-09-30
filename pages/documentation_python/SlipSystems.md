---
title: 'Slip Systems'
sidebar: documentation_sidebar
permalink: SlipSystems_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: SlipSystems.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/SlipSystems.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Plasticity/SlipSystems.py">edit page</a></font>

<!--introduction-->

Crystal slip shears one part of a crystal past another by dislocation
motion on a lattice plane. A *slip system* specifies the plane and the
direction of that shear. This page constructs one system, generates its
symmetry-equivalent family, and assigns strengths to several families.

```python
from mtex import *
```

## Define one slip system

A slip system combines a Burgers vector $$\mathbf b$$, which gives the slip
direction and displacement, with a slip-plane normal $$\mathbf n$$.
The direction must lie in the plane, so $$\mathbf b\cdot\mathbf n=0$$.

Start with the lattice and crystal frame of hexagonal alpha-titanium.
The four-index notation used below is introduced with
[crystal directions](CrystalDirections_py.html).

```python
cs = crystalFrame('622', [3, 3, 4.7], 'x||a', mineral='Titanium (Alpha)')
cs
```

```text
crystalFrame (⊙c→a)
  mineral        : Titanium (Alpha)
  symmetry       : 622
  elements       : 12
  a, b, c        : 3, 3, 4.7
  reference frame: X||a, Y||b*, Z||c
```

One first-order prismatic $$\langle a\rangle$$ system has Burgers vector
$$[2\bar1\bar10]$$ and plane normal $$(01\bar10)$$.

```python
b = Miller(2, -1, -1, 0, cs, 'UVTW')
b
```

```text
vector3d (Titanium (Alpha))
  U   V   T  W
  2  -1  -1  0
```

```python
n = Miller(0, 1, -1, 0, cs, 'HKIL')
n
```

```text
vector3d (Titanium (Alpha))
  h  k   i  l
  0  1  -1  0
```

Passing the two directions to the
[`slipSystem`](slipSystem.slipSystem.html) constructor keeps them together
as one physical shear mode. The constructor also checks orthogonality.

```python
sSPrismatic = slipSystem(b, n)
sSPrismatic
```

```text
slipSystem (Titanium (Alpha))
  U   V   T  W  | H  K   I  L  CRSS
  2  -1  -1  0    0  1  -1  0     1
```

Common families also have named constructors. For example, this creates
one representative of the basal $$\langle11\bar20\rangle\{0001\}$$ family.

```python
sSBasal = slipSystem.basal(cs)
sSBasal
```

```text
slipSystem (Titanium (Alpha))
  U  V   T  W  | H  K  I  L  CRSS
  1  1  -2  0    0  0  0  1     1
```

## Draw the plane and direction

Drawn inside the crystal, the plane shows where the lattice shears and the
arrow shows the direction of shear. The same plane with another in-plane
direction is therefore a different slip system.

```python
cS = crystalShape.hex(cs)

plot(cS, faceAlpha=0.4, faceColor=[0.7, 0.8, 0.9])
hold(True)
plot(cS, sSBasal, faceColor='red')
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/SlipSystems-7.png"></center>

The red disk is the basal plane. The red arrow lies in that disk, which
makes the required orthogonality of $$\mathbf b$$ and $$\mathbf n$$ visible.

## Generate the complete family

A representative does not describe every basal system in a hexagonal
crystal. Crystal symmetry generates the equivalent systems.
The option `'antipodal'` identifies opposite Burgers-vector signs, because
they describe the two shear senses of the same geometric system.

```python
sSBasalSym = sSBasal.symmetrise('antipodal')
sSBasalSym
```

```text
slipSystem (Titanium (Alpha))
  size: 3
   U  V   T  W  | H  K  I  L  CRSS
   1  1  -2  0    0  0  0  1     1
  -1  2  -1  0    0  0  0  1     1
  -2  1   1  0    0  0  0  1     1
```

Alpha-titanium has three such basal systems. The norm of each Burgers
vector is 3 in the lattice units selected in `cs`.

```python
len(sSBasalSym)
```

```text
3
```

```python
sSBasalSym.b.norm()
```

```text
array([3., 3., 3.])
```

## Choose families and their CRSS

For cubic lattices, `slipSystem.fcc(cs)` and `slipSystem.bcc(cs)` provide
standard sets. Hexagonal lattices deliberately have no `slipSystem.hcp`.
The active families and their *critical resolved shear stress* (CRSS)
depend on the material, temperature, and loading rather than on the
lattice alone. MTEX therefore provides each family separately:

```
slipSystem.basal(cs)          <11-20>{0001}
slipSystem.prismaticA(cs)     <2-1-10>{01-10}
slipSystem.prismatic2A(cs)    <01-10>{2-1-10}     2nd order prismatic
slipSystem.pyramidalA(cs)     <2-1-10>{01-11}     1st order pyramidal <a>
slipSystem.pyramidalCA(cs)    <2-1-13>{-1101}     1st order pyramidal <c+a>
slipSystem.pyramidal2CA(cs)   <2-1-13>{-2112}     2nd order pyramidal <c+a>
slipSystem.twinT1(cs)         <1-101>{-1102}      tensile twinning
slipSystem.twinT2(cs)         <2-1-16>{-2111}     tensile twinning
slipSystem.twinC1(cs)         <-110-2>{-1101}     compressive twinning
slipSystem.twinC2(cs)         <2-1-1-3>{2-1-12}   compressive twinning
```

The second argument sets the CRSS of a family. This illustrative set makes
the basal systems easiest to activate and makes the families comparable.
Use values measured for the material and conditions in a real model.

```python
sS = cat(slipSystem.basal(cs, 1), slipSystem.prismatic2A(cs, 66),
         slipSystem.pyramidalCA(cs, 80), slipSystem.twinC1(cs, 100))
sS
```

```text
slipSystem (Titanium (Alpha))
  size: 4
   U   V   T   W  | H   K   I  L  CRSS
   1   1  -2   0    0   0   0  1     1
   0   1  -1   0    2  -1  -1  0    66
   2  -1  -1   3   -1   1   0  1    80
  -1   1   0  -2   -1   1   0  1   100
```

## Deformation and Schmid tensors

In linearized kinematics, a unit shear on a slip system contributes the
displacement gradient $$\mathbf b\otimes\mathbf n$$ after both vectors are
normalized. Its symmetric part is strain and its antisymmetric part is
lattice spin. MTEX returns this quantity as the deformation tensor.

```python
L = sSBasal.deformationTensor()
L
```

```text
tensor (Titanium (Alpha))
  rank: 2 (3 × 3)
  0  0    0.5
  0  0  0.866
  0  0      0
```

MTEX uses exactly the same normalized dyad as the Schmid tensor. The next
page contracts it with a stress tensor to obtain resolved shear stress.

```python
S = sSBasal.SchmidTensor()
S
```

```text
velocityGradientTensor (Titanium (Alpha))
  rank: 2 (3 × 3)
  0  0    0.5
  0  0  0.866
  0  0      0
```

## Express a system in the specimen frame

A newly constructed slip system is expressed in the crystal frame.
An [orientation](OrientationDefinition_py.html) maps the crystal frame into a
specimen frame. Multiplication applies that map to both $$\mathbf b$$ and
$$\mathbf n$$.

```python
ori = orientation.rand(cs)
ori
```

```text
orientation (Titanium (Alpha) → y↓→x)
  Bunge Euler angles in degree
  phi1   Phi  phi2
   167  64.2   176
```

```python
sSSpecimen = ori * sSBasal
sSSpecimen
```

```text
slipSystem (y↓→x)
     x     y      z  |  x     y     z
  1.87  0.69  -2.24  0.04  0.19  0.09
```

## References

* U. F. Kocks, C. N. Tomé and H.-R. Wenk,
  [Texture and Anisotropy](https://books.google.com/books?id=vkyU9KZBTioC),
  Cambridge University Press, 1998, develops slip-system geometry and the
  crystal-plasticity kinematics used here.

## Next

Continue with [Schmid Factor](SchmidFactor_py.html) to relate the plane and
direction of each slip system to an applied stress.
{% endraw %}
