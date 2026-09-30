---
title: 'Anisotropic Elasticity'
sidebar: documentation_sidebar
permalink: AnisotropicTheory_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: AnisotropicTheory.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/AnisotropicTheory.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Elasticity/AnisotropicTheory.py">edit page</a></font>

<!--introduction-->

An anisotropic material responds differently when the loading direction
changes. A single elastic modulus can therefore describe only one loading
geometry.

The fourth-order stiffness tensor $$C$$ collects the complete linear elastic
response. MTEX represents it as a
[stiffnessTensor](stiffnessTensor.stiffnessTensor.html).
This page loads one measured tensor, applies Hooke's law, and then queries
its response for chosen directions and planes.

```python
import matplotlib.pyplot as plt
import numpy as np
```

```python
from mtex import *
```

```python
plottingConvention.default('y↑→x')
```

## Load the olivine stiffness tensor

A stiffness tensor can be constructed from a symmetric 6-by-6 matrix.
It can also be imported from a file, as in this example.
The data are the olivine measurements of Abramson et al. (1997).

```python
fname = mtexdatafile('olivine1997')

# orthorhombic crystal symmetry and crystal frame
cs = crystalFrame('mmm', [4.7646, 10.2296, 5.9942], mineral='Olivine')

# stiffness tensor in GPa
C = stiffnessTensor.load(fname, cs)
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

A general anisotropic stiffness has as many as 21 independent numbers.
The orthorhombic symmetry of olivine reduces this matrix to nine.
The zero entries in the displayed matrix are imposed by that symmetry.
The two-number isotropic limit was developed in
[Isotropic Theory](IsotropicTheory_py.html).

## Apply Hooke's law

Stress is force per unit area, including its direction on each plane.
Strain records the corresponding fractional change of shape.
Linear elasticity maps a given strain to stress with $$C$$.

Start with a diagonal strain tensor.

```python
eps = strainTensor(np.diag([1, 1.1, 0.9]), cs)
eps
```

```text
strainTensor (Olivine)
  rank: 2 (3 × 3)
  1    0    0
  0  1.1    0
  0    0  0.9
```

Hooke's law is the double contraction of stiffness and strain.

```python
sigma = colon(C, eps)
sigma
```

```text
stressTensor (Olivine)
  rank: 2 (3 × 3)
  459.905       0       0
        0  353.42       0
        0       0  366.23
```

The compliance tensor $$S=C^{-1}$$ performs the reverse mapping.
Applying it to the stress recovers the original strain.

```python
S = inv(C)
eps_recovered = colon(S, sigma)
eps_recovered
```

```text
strainTensor (Olivine)
  rank: 2 (3 × 3)
  1    0    0
  0  1.1    0
  0    0  0.9
```

## Compute the elastic energy

The elastic energy of this strain can be computed in three equivalent
ways. The first contracts the stress with the strain.

```python
U_contraction = colon(sigma, eps)
U_contraction
```

```text
1178.2740
```

The second writes every contraction index explicitly.

```python
U_Einstein = EinsteinSum(C, [-1, -2, -3, -4], eps, [-1, -2], eps, [-3, -4])
U_Einstein
```

```text
1178.2740
```

The third applies Hooke's law first and then contracts with the strain.

```python
U_Hooke = colon(colon(C, eps), eps)
U_Hooke
```

```text
1178.2740
```

## Young's modulus by loading direction

[Isotropic Theory](IsotropicTheory_py.html) defines Young's modulus as the
ratio of axial stress to axial strain.
In an anisotropic crystal it depends on the loading direction $$d$$.
Passing one direction to
[YoungsModulus](stiffnessTensor.YoungsModulus.html) returns one value.

```python
d = vector3d.X
E_x = C.YoungsModulus(d)
E_x
```

```text
286.9284
```

Omitting $$d$$ returns the complete directional dependence as a function on
the sphere.

```python
E = C.YoungsModulus()
E
```

```text
S2FunHandle (Olivine)
  bandwidth hint: 32
  antipodal     : true
```

---

```python
# evaluate the same spherical function along x
E.eval(d)
```

```text
286.9284
```

```python
# plot every loading direction
newMtexFigure()
plot(E, complete=True, upper=True)
mtexColorMap('blue2red')
mtexColorbar(title="Young's modulus in GPa")
```

<center class="mtex-figure"><img class="inline" src="figures/python/AnisotropicTheory-14.png"></center>

Each point on the hemisphere is a possible loading direction.
The changing colours and non-circular contours show why one Young's
modulus cannot describe this crystal.

## Linear compressibility by direction

Linear compressibility is the fractional length change along a direction
caused by an increase in hydrostatic pressure.
Contracting the compliance tensor with the pressure gives a second-rank
tensor, whose directional values form another spherical function.

[linearCompressibility](stiffnessTensor.linearCompressibility.html)
returns that function when the direction is omitted.

```python
beta = linearCompressibility(C)
beta
```

```text
S2FunHandle (Olivine)
  bandwidth hint: 32
  antipodal     : true
```

```python
newMtexFigure()
plot(beta, complete=True, upper=True)
mtexColorMap('blue2red')
mtexColorbar(title='linear compressibility in 1/GPa')
```

<center class="mtex-figure"><img class="inline" src="figures/python/AnisotropicTheory-16.png"></center>

The map answers a different question from Young's modulus.
It shows the length response to pressure applied from every direction,
rather than the axial response to one uniaxial load.

Evaluate the function along the same $$x$$ direction.

```python
beta_x = beta.eval(d)
beta_x
```

```text
0.0018
```

## Poisson's ratio around a pulling direction

[Isotropic Theory](IsotropicTheory_py.html) defines Poisson's ratio from the
axial and transverse strains.
An anisotropic value needs a pulling direction $$p$$ and a transverse
direction $$n$$ perpendicular to it.

```python
# pulling direction
p = vector3d.Z

# two transverse directions
n = cat(vector3d.X, vector3d.Y)

# one value for each transverse direction
nu_xy = C.PoissonRatio(p, n)
nu_xy
```

```text
array([0.1515, 0.3383])
```

Omitting $$n$$ from [PoissonRatio](stiffnessTensor.PoissonRatio.html)
leaves a spherical function of possible transverse directions.

```python
nu = C.PoissonRatio(p)
nu
```

```text
S2FunHandle (Olivine)
  bandwidth hint: 32
  antipodal     : true
```

Only directions perpendicular to $$p$$ are physically meaningful.
A [section plot](S2Fun.plotSection.html) restricts the function to that
plane, which is the $$xy$$ plane for the chosen $$z$$ pulling direction.

```python
newMtexFigure()
plotSection(nu, p, color='interp', linewidth=5)
plt.axis('off')
mtexColorMap('blue2red')
mtexColorbar(title="Poisson's ratio")
```

<center class="mtex-figure"><img class="inline" src="figures/python/AnisotropicTheory-20.png"></center>

Read around the circle rather than across its interior.
The colour change around the circle shows that transverse contraction
depends on which perpendicular direction is observed.

## Shear modulus for a plane and direction

[Isotropic Theory](IsotropicTheory_py.html) defines the shear modulus as the
ratio of shear stress to shear strain.
An anisotropic value needs the normal $$h$$ of the shear plane and a shear
direction $$u$$ within that plane.

Passing both directions to
[shearModulus](stiffnessTensor.shearModulus.html) returns one number.

```python
# unit shear-plane normal
h = Miller(0, 0, 1, cs).normalize()

# unit shear direction within that plane
u = Miller(1, 0, 0, cs, 'uvw').normalize()

G = C.shearModulus(h, u)
G
```

```text
77
```

Omitting the shear direction leaves a spherical function of $$u$$.
Only directions within the shear plane are meaningful.
Plot a section for each of three different plane normals.

```python
newMtexFigure(layout=[1, 3], figSize='large')

hMiller = Miller(1, 0, 0, cs)
h = hMiller.normalize()
plotSection(C.shearModulus(h), h, color='interp', linewidth=5)
mtexTitle(hMiller.char())
plt.axis('off')

nextAxis()
hMiller = Miller(1, 1, 0, cs)
h = hMiller.normalize()
plotSection(C.shearModulus(h), h, color='interp', linewidth=5)
mtexTitle(hMiller.char())
plt.axis('off')

nextAxis()
hMiller = Miller(1, 1, 1, cs)
h = hMiller.normalize()
plotSection(C.shearModulus(h), h, color='interp', linewidth=5)
mtexTitle(hMiller.char())
plt.axis('off')

setColorRange('equal')
mtexColorMap('blue2red')
mtexColorbar(title='shear modulus in GPa')
```

<center class="mtex-figure"><img class="inline" src="figures/python/AnisotropicTheory-22.png"></center>

The common colour range makes the three sections directly comparable.
Both the colour variation within a circle and the differences between
circles belong to the anisotropic shear response.

## The maths behind the shear modulus

Write the compliance tensor as $$S=C^{-1}$$.
For a unit plane normal $$h$$ and a perpendicular unit direction $$u$$, the
directional shear modulus is

$$G(h,u)=\frac{1}{4\,S_{ijkl}\,h_i u_j h_k u_l}.$$

Fixing $$h$$ while varying $$u$$ gives the section plots above.
Passing both directions evaluates the same expression as a number.

## References

* E. H. Abramson, J. M. Brown, L. J. Slutsky, and J. Zaug, [The elastic constants of San
  Carlos olivine to 17 GPa](https://doi.org/10.1029/97JB00682), _Journal of Geophysical
  Research_ 102(B6) (1997), 12253-12263, provides the olivine stiffness tensor used here.
* J. F. Nye, [Physical Properties of Crystals: Their Representation by Tensors and
  Matrices](https://search.worldcat.org/title/11114089), Oxford University Press, 1985,
  develops the symmetry constraints and tensor contractions used for anisotropic
  physical properties.

## Next

[Wave Velocities](WaveVelocities_py.html) combines this stiffness tensor with
density. It solves for the three wave speeds and their polarisation
directions for every propagation direction.

## Technical Details

MATLAB's `:` is `colon`, and the olivine file of MATLAB's data folder is the data set
`olivine1997`. The loader reads the density 3.355 g/cm$$^3$$ the file states, which MATLAB's
numeric interface leaves out. `C.YoungsModulus()` and `C.PoissonRatio(p)` return the
directional functions as handles evaluated on demand, where MATLAB expands them into
harmonics of bandwidth 250 and 16; `linearCompressibility` is the same handle, MATLAB's a
harmonic expansion of bandwidth 2. The values agree. MATLAB's section titles read 100,
110 and 111 because its TeX interpreter swallows the braces of `{100}`.
{% endraw %}
