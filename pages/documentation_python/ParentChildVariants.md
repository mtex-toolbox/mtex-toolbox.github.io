---
title: 'Parent and Child Variants'
sidebar: documentation_sidebar
permalink: ParentChildVariants_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: ParentChildVariants.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/ParentChildVariants.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/PhaseTransitions/ParentChildVariants.py">edit page</a></font>

<!--introduction-->

The stable crystallographic structure of most materials depends on conditions such as
temperature and pressure. A solid-state phase transition changes that structure when the
conditions change.

The initial lattice is the *parent phase*, and the resulting lattice is the *child phase*.

The two phases can have the same chemical composition but different crystal structures. In
titanium, the parent beta phase is cubic and the child alpha phase is hexagonal.

```python
import numpy as np

from mtex import *

plottingConvention.default('y↑→x')

csBeta = crystalFrame('432', [3.3, 3.3, 3.3], mineral='Ti (beta)')
csAlpha = crystalFrame('622', [3, 3, 4.7], mineral='Ti (alpha)')
```

## The Burgers orientation relationship

An *orientation relationship* (OR) is a fixed angular relation between the parent and
child lattices. Atomic rearrangement during the transition makes some plane and direction
alignments energetically favourable.

Let `oriParent` describe the lattice before the transition.

```python
oriParent = orientation.rand(csBeta)
```

The dominant OR between beta and alpha titanium is the Burgers OR. MTEX stores it as a
parent-to-child [orientation](orientation.orientation.html).

```python
beta2alpha = orientation.Burgers(csBeta, csAlpha)
beta2alpha
```

```text
misorientation (Ti (beta) → Ti (alpha))
  (110) || (0001)   [1̅11̅] || [21̅1̅0]
```

A child orientation consistent with this OR is obtained by multiplying the parent
orientation by the inverse OR.

```python
oriChild = oriParent * inv(beta2alpha)
oriChild
```

```text
orientation (Ti (alpha) → y↑→x)
  Bunge Euler angles in degree
  phi1  Phi  phi2
   312  119   331
```

The Burgers OR aligns a hexagonal $$(0001)$$ plane with a cubic $$(110)$$ plane. It also aligns
a hexagonal $$[2\bar{1}\bar{1}0]$$ direction with a cubic $$[\bar{1}1\bar{1}]$$ direction.

The two pole figures below check those parallelisms for `oriParent` and `oriChild`.

In the left panel all twelve small child poles fall on a large parent pole. The plane
alignment survives every symmetric copy. The right panel is different: only four of the
twelve child directions land on a parent pole, and the rest sit 10.5 or 49.5 degrees away.
The six equivalent basal directions are 60 degrees apart, while the two cubic axes lying in
the same plane are 70.5 degrees apart, so a direction alignment cannot repeat for every
copy the way a plane alignment does.

```python
# (110) / (0001) pole figure
plotPF(oriParent, Miller(1, 1, 0, csBeta), markerSize=20, markerFaceColor='none', lineWidth=4, layout=[1, 2])
hold(True)
plot(oriChild.symmetrise() * Miller(0, 0, 0, 1, csAlpha), markerSize=12)
xlabel(Miller(0, 0, 0, 1, csAlpha).char(), color=ind2color(2))
hold(False)

# [111] / [2-1-10] pole figure
nextAxis(2)
plotPF(oriParent, Miller(1, 1, 1, csBeta, 'uvw'), 'upper', markerSize=20, markerFaceColor='none', lineWidth=4)

dAlpha = Miller(2, -1, -1, 0, csAlpha, 'uvw')
hold(True)
plot(oriChild.symmetrise() * dAlpha, markerSize=12)
xlabel(dAlpha.char(), color=ind2color(2))
hold(False)
gcm().drawNow()
```

<center class="mtex-figure"><img class="inline" src="figures/python/ParentChildVariants-5.png"></center>

## Define an OR from parallel features

The same alignment rules can define the OR directly with
[`orientation.map`](orientation.map.html).

```python
beta2alpha = orientation.map(Miller(1, 1, 0, csBeta), Miller(0, 0, 0, 1, csAlpha),
                             Miller(-1, 1, -1, csBeta, 'uvw'), Miller(2, -1, -1, 0, csAlpha, 'uvw'))
```

Defining the OR through crystal planes and directions has an important advantage. The
definition does not depend on the [hexagonal crystal-frame convention](CrystalReferenceSystem_py.html).

## Child variants

A *variant* is one crystallographically equivalent child orientation predicted from a
single parent orientation by a known OR. It is the finest-grained classification of a child
relative to its parent.

Cubic proper symmetry gives `oriParent` 24 equivalent representations.

```python
oriParentSym = oriParent.symmetrise()
oriParentSym.size
```

```text
24
```

Applying the OR to all 24 representations gives 24 child orientations.

```python
oriChild = oriParentSym * inv(beta2alpha)
oriChild.size
```

```text
24
```

Under hexagonal child symmetry, some of these orientations represent the same physical
orientation. For the exact Burgers OR they form 12 pairs.

The inverse pole figure places both members of each pair at the same location. The 24
computations therefore appear as only 12 distinct points.

```python
plotIPF(oriChild, vector3d.Z)
```

<center class="mtex-figure"><img class="inline" src="figures/python/ParentChildVariants-9.png"></center>

[`variants`](orientation.variants.html) removes the symmetry-equivalent duplicates
directly. It returns the 12 child variants for this OR.

```python
oriChild = variants(beta2alpha, oriParent)

for i in range(1, 13):
  plotIPF(oriChild[i - 1], ind2color(i), vector3d.Z, label=i, markerEdgeColor='k')
  hold(True)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/ParentChildVariants-10.png"></center>

The labels are variant IDs. A variant ID is an index into this ordered set, so specific
variants can be selected by passing their IDs.

```python
oriChild = variants(beta2alpha, oriParent, [2, 3])
oriChild
```

```text
orientation (Ti (alpha) → y↑→x)
  size: 2
  Bunge Euler angles in degree
  phi1   Phi  phi2
  30.8   170   115
  58.9  50.8   314
```

## Exact and approximate orientation relationships

The reduction from 24 parent representations to 12 variants is specific to the exact
Burgers OR. A general OR between these two phases has exactly 24 variants.

Disturbing the Burgers OR by a fixed 2 degree rotation breaks the exact pairing.

```python
beta2alpha = beta2alpha * orientation.byAxisAngle(vector3d(1, 2, 3), 2 * degree, csBeta, csBeta)
```

The inverse pole figure now contains 24 points. They remain close to the 12 exact Burgers
positions, so each former pair appears slightly split. `variants` treats two
representations as the same when they agree to within about 1.6 degrees, which is why the
perturbation has to exceed that for the pairs to separate.

```python
oriChildPerturbed = variants(beta2alpha, oriParent)
print(oriChildPerturbed.size)
plotIPF(oriChildPerturbed, vector3d.Z)
```

```text
24
```

<center class="mtex-figure"><img class="inline" src="figures/python/ParentChildVariants-13.png"></center>

## Identify an observed variant

The inverse task is to determine a variant ID from a parent-child pair or from two child
orientations. The [`calcVariants`](parentGrainReconstructor.calcVariants.html) method does
this after a parent grain reconstruction has been computed.

That workflow is demonstrated in [Parent Austenite Reconstruction](MaParentGrainReconstruction_py.html).

## Parent variants

The same ambiguity occurs in the opposite direction. Given one child orientation, several
parent orientations could have produced it. [`variants`](orientation.variants.html)
returns them with `'parent'`.

```python
# return to the exact Burgers orientation relationship
b2a = orientation.Burgers(csBeta, csAlpha)

# select one child variant
oriChildSingle = variants(b2a, oriParent, 1)

oriParents = variants(b2a, oriChildSingle, 'parent')
oriParents.size
```

```text
6
```

There are six parent variants, compared with 12 child variants. The two counts need not
agree because the parent and child point-group orders govern them differently.

One of the six is the parent orientation from which the child was made. The minimum
misorientation below is therefore zero degrees to numerical precision.

```python
np.min(angle(oriParents, oriParent)) / degree
```

```text
8.2273e-14
```

The [`parents`](orientation.parents.html) method returns the same set of OR variants.
Multiplying the child orientation by them produces the six candidate parent orientations.

```python
unique(oriChildSingle * b2a.parents())
```

```text
orientation (Ti (beta) → y↑→x)
  size: 6
  Bunge Euler angles in degree
  phi1   Phi  phi2
   354  36.3  8.64
    66   127   172
  38.9  84.3   344
  33.7  75.1   165
  74.8   135   357
   338  31.1   202
```

A single child orientation cannot identify which candidate parent is correct. Parent grain
reconstruction resolves the ambiguity by comparing neighbouring child grains.

## References

* W. G. Burgers, [On the process of transition of the cubic-body-centered modification into the hexagonal-close-packed modification of zirconium](https://doi.org/10.1016/S0031-8914(34)80244-3),
  *Physica* 1 (1934), 561-586, establishes the plane and direction relations used here.

## Next

Continue with [Martensite Variants](MartensiteVariants_py.html) to classify variants, packets,
and Bain groups in a measured steel microstructure.
{% endraw %}
