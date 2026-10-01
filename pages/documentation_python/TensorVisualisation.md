---
title: 'Tensor Visualization'
sidebar: documentation_sidebar
permalink: TensorVisualisation_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: TensorVisualisation.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/TensorVisualisation.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Tensors/TensorVisualisation.py">edit page</a></font>

<!--introduction-->

A tensor stores a directional material property, but its component table
rarely gives an immediate picture of the anisotropy. This page shows how
MTEX turns a tensor into a scalar function on the sphere and how to read
the resulting plots.

This page assumes the tensor ranks and physical classes introduced in
[Defining Tensorial Properties](TensorDefinition_py.html). Read
[Tensor Arithmetic](TensorArithmetics_py.html) first if tensor contraction or
eigenvectors are new.

A reference frame is the coordinate system in which the tensor is
expressed. The plotting convention lays that frame out on screen; it does
not rotate the tensor. See [Crystal Reference
System](CrystalReferenceSystem.html) for the relation between crystal axes and Cartesian axes.

```python
import matplotlib.pyplot as plt
import numpy as np
```

```python
from mtex import *
```

```python
plottingConvention.default('y↑→x')
setMTEXpref('defaultColorMap', blue2redColorMap)
```

## Plotting the directional magnitude

The simplest tensor plot assigns one scalar to every unit direction.
MTEX calls this scalar the *directional magnitude*.
[plot](tensor.plot.html) draws it as a spherical function.

The example is the stiffness tensor of olivine measured by Abramson et
al. (1997). Its printed summary records the rank, unit, crystal frame, and
coefficients that the plot below represents.

```python
cs = crystalFrame('mmm', [4.7646, 10.2296, 5.9942], mineral='Olivine')
C = stiffnessTensor.load(mtexdatafile('olivine1997'), cs)
C
```

```text
stiffnessTensor (Olivine)
  density: 3.355
  unit   : GPa
  rank   : 4 (3 × 3 × 3 × 3)
  tensor in Voigt matrix representation
  320.5  68.15   71.6   0   0     0
  68.15  196.5   76.8   0   0     0
   71.6   76.8  233.5   0   0     0
      0      0      0  64   0     0
      0      0      0   0  77     0
      0      0      0   0   0  78.7
```

---

```python
plot(C, complete=True, upper=True)
mtexColorbar(title='directional magnitude in GPa')
```

<center class="mtex-figure"><img class="inline" src="figures/python/TensorVisualisation-5.png"></center>

The red maximum lies along $$[100]$$, while the blue minimum lies along
$$[010]$$. The repeated pattern reflects the orthorhombic crystal symmetry.
The options `complete` and `upper` show the complete upper hemisphere
instead of only the symmetry-reduced sector.

This plot shows the self-contraction of `C`. It is not Young's modulus or
a complete picture of the stiffness tensor. Use
[YoungsModulus](stiffnessTensor.YoungsModulus.html) when that physical
property is the question.

## Inspecting the spherical function

[directionalMagnitude](tensor.directionalMagnitude.html) returns the
spherical function used by `plot`. The object display identifies its
representation, symmetry, bandwidth, and antipodal character.

```python
sF = C.directionalMagnitude()
sF
```

```text
S2FunHarmonic (Olivine)
  bandwidth: 4
  mean     : 237.6
  antipodal: true
```

Spherical-function operations can now be applied directly. For example,
[max](S2Fun.max.html) finds the largest value and its direction.

```python
maxValue, maxDirection = max(sF)
maxDirection = round(maxDirection)
maxValue
```

```text
320.5000
```

---

```python
maxDirection
```

```text
vector3d (Olivine)
  antipodal: true
  h  k  l
  1  0  0
```

The output gives a maximum of 320.5 GPa along $$[100]$$, which is the red
direction in the first figure. The
[spherical plotting options](S2FunPlotting_py.html) and every
[spherical projection](SphericalProjections_py.html) also apply to `sF`.

## Rank-two tensors and principal axes

For a symmetric rank-two tensor, the directional magnitude is a quadratic
form. Its extrema lie along the principal axes, which are the eigenvectors
returned by [eig](tensor.eig.html) after the eigenvalues.

```python
T = tensor(np.diag([3, 1, -1]), rank=2)
lam, e = eig(T)
e
```

```text
vector3d (y↑→x)
  size     : 3
  antipodal: true
  x  y  z
  0  0  1
  0  1  0
  1  0  0
```

---

```python
lam
```

```text
array([-1.,  1.,  3.])
```

---

```python
plot(T, complete=True, upper=True)
mtexColorbar(title='directional magnitude')
```

<center class="mtex-figure"><img class="inline" src="figures/python/TensorVisualisation-11.png"></center>

The labelled z, y, and x directions are the extrema of the coloured
quadratic form. Their printed order matches the eigenvalues -1, 1, and 3.
Negative values are colours here, not negative radii, so their sign
remains visible.

## Properties that depend on two directions

Not every tensor-derived quantity is a function of one direction.
Poisson's ratio depends on a loading direction and a transverse direction.
The transverse direction must be perpendicular to the loading direction.

Fix the loading direction `p` along z. The admissible transverse
directions then form the great circle normal to `p`, so
[plotSection](S2Fun.plotSection.html) is the natural display.

```python
p = vector3d.Z
nu = C.PoissonRatio(p)

plotSection(nu, p, color='interp', lineWidth=5)
plt.axis('off')
mtexColorbar(title="Poisson's ratio")
```

<center class="mtex-figure"><img class="inline" src="figures/python/TensorVisualisation-12.png"></center>

The closed curve is only the admissible great circle, not the whole
sphere. Its changing radius and colour show that the transverse response
varies as the transverse direction turns around z.
[Anisotropic Elasticity](AnisotropicTheory_py.html) develops Poisson's ratio,
shear modulus, and Young's modulus from the compliance tensor.

## Specialized plots

Physical tensor classes provide plots tailored to the property they
represent. [Wave Velocities](WaveVelocities_py.html) plots elastic-wave speed
and polarization. [Birefringence](BirefringenceDemo_py.html) plots the optical
response, and [Piezo Electricity](PiezoElectricity_py.html) plots a signed
third-rank response.

Continue with [Tensor Averages](TensorAverage_py.html) to combine a
single-crystal tensor with measured orientations or an ODF.

## The maths behind directional magnitude

For a rank-$$r$$ tensor $$T$$, MTEX contracts the same unit direction into
every tensor slot:

$$ Q(\vec x) = T_{i_1 \ldots i_r}\, x_{i_1} \cdots x_{i_r},
\qquad |\vec x| = 1. $$

This produces an [S2Fun](S2FunConcept_py.html). Even-rank tensors satisfy
$$Q(-\vec x)=Q(\vec x)$$, while odd-rank tensors reverse sign.

Repeating the same direction also means that `Q` contains only the fully
symmetric part of a general tensor. It is therefore a useful view, but it
cannot encode every component of a higher-rank tensor.

## Further reading

* J. F. Nye, [Physical Properties of Crystals: Their Representation by Tensors and
  Matrices](https://search.worldcat.org/title/11114089), Oxford University Press, 1985,
  develops principal axes and tensor representation surfaces.
* A. Marmier et al., [ElAM: A computer program for the analysis and representation of
  anisotropic elastic properties](https://doi.org/10.1016/j.cpc.2010.08.033), _Computer
  Physics Communications_ 181, 2102-2115, 2010, compares three-dimensional property
  surfaces with planar sections.
* E. H. Abramson et al., [The elastic constants of San Carlos olivine to 17
  GPa](https://doi.org/10.1029/97JB00682), _Journal of Geophysical Research_ 102,
  12253-12263, 1997, is the source of the olivine example.

```python
setMTEXpref('defaultColorMap', WhiteJetColorMap)
```

## Technical Details

`eig` returns the eigenvalues first and the eigenvectors second, where MATLAB's
`[e, lambda] = eig(T)` returns the vectors first. The loader reads the density of
3.355 g/cm$$^3$$ the olivine file states, which MATLAB's numeric interface leaves out.
{% endraw %}
