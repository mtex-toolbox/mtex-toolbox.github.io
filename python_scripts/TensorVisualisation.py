# %% [markdown]
# # Tensor Visualization
#
# A tensor stores a directional material property, but its component table
# rarely gives an immediate picture of the anisotropy. This page shows how
# MTEX turns a tensor into a scalar function on the sphere and how to read
# the resulting plots.
#
# This page assumes the tensor ranks and physical classes introduced in
# [Defining Tensorial Properties](https://mtex-toolbox.github.io/TensorDefinition_py.html). Read
# [Tensor Arithmetic](https://mtex-toolbox.github.io/TensorArithmetics_py.html) first if tensor contraction or
# eigenvectors are new.
#
# A reference frame is the coordinate system in which the tensor is
# expressed. The plotting convention lays that frame out on screen; it does
# not rotate the tensor. See [Crystal Reference
# System](https://mtex-toolbox.github.io/CrystalReferenceSystem_py.html) for the relation between crystal axes and Cartesian axes.

# %%
import matplotlib.pyplot as plt
import numpy as np

# %%
from mtex import *

# %%
plottingConvention.default('y↑→x')
setMTEXpref('defaultColorMap', blue2redColorMap)

# %% [markdown]
# ## Plotting the directional magnitude
#
# The simplest tensor plot assigns one scalar to every unit direction.
# MTEX calls this scalar the *directional magnitude*.
# [plot](https://mtex-toolbox.github.io/tensor.plot.html) draws it as a spherical function.
#
# The example is the stiffness tensor of olivine measured by Abramson et
# al. (1997). Its printed summary records the rank, unit, crystal frame, and
# coefficients that the plot below represents.

# %%
cs = crystalFrame('mmm', [4.7646, 10.2296, 5.9942], mineral='Olivine')
C = stiffnessTensor.load(mtexdatafile('olivine1997'), cs)
C

# %% [markdown]
# ---

# %%
plot(C, complete=True, upper=True)
mtexColorbar(title='directional magnitude in GPa')

# %% [markdown]
# The red maximum lies along $[100]$, while the blue minimum lies along
# $[010]$. The repeated pattern reflects the orthorhombic crystal symmetry.
# The options `complete` and `upper` show the complete upper hemisphere
# instead of only the symmetry-reduced sector.
#
# This plot shows the self-contraction of `C`. It is not Young's modulus or
# a complete picture of the stiffness tensor. Use
# [YoungsModulus](https://mtex-toolbox.github.io/stiffnessTensor.YoungsModulus.html) when that physical
# property is the question.

# %% [markdown]
# ## Inspecting the spherical function
#
# [directionalMagnitude](https://mtex-toolbox.github.io/tensor.directionalMagnitude.html) returns the
# spherical function used by `plot`. The object display identifies its
# representation, symmetry, bandwidth, and antipodal character.

# %%
sF = C.directionalMagnitude()
sF

# %% [markdown]
# Spherical-function operations can now be applied directly. For example,
# [max](https://mtex-toolbox.github.io/S2Fun.max.html) finds the largest value and its direction.

# %%
maxValue, maxDirection = max(sF)
maxDirection = round(maxDirection)
maxValue

# %% [markdown]
# ---

# %%
maxDirection

# %% [markdown]
# The output gives a maximum of 320.5 GPa along $[100]$, which is the red
# direction in the first figure. The
# [spherical plotting options](https://mtex-toolbox.github.io/S2FunPlotting_py.html) and every
# [spherical projection](https://mtex-toolbox.github.io/SphericalProjections_py.html) also apply to `sF`.

# %% [markdown]
# ## Rank-two tensors and principal axes
#
# For a symmetric rank-two tensor, the directional magnitude is a quadratic
# form. Its extrema lie along the principal axes, which are the eigenvectors
# returned by [eig](https://mtex-toolbox.github.io/tensor.eig.html) after the eigenvalues.

# %%
T = tensor(np.diag([3, 1, -1]), rank=2)
lam, e = eig(T)
e

# %% [markdown]
# ---

# %%
lam

# %% [markdown]
# ---

# %%
plot(T, complete=True, upper=True)
mtexColorbar(title='directional magnitude')

# %% [markdown]
# The labelled z, y, and x directions are the extrema of the coloured
# quadratic form. Their printed order matches the eigenvalues -1, 1, and 3.
# Negative values are colours here, not negative radii, so their sign
# remains visible.

# %% [markdown]
# ## Properties that depend on two directions
#
# Not every tensor-derived quantity is a function of one direction.
# Poisson's ratio depends on a loading direction and a transverse direction.
# The transverse direction must be perpendicular to the loading direction.
#
# Fix the loading direction `p` along z. The admissible transverse
# directions then form the great circle normal to `p`, so
# [plotSection](https://mtex-toolbox.github.io/S2Fun.plotSection.html) is the natural display.

# %%
p = vector3d.Z
nu = C.PoissonRatio(p)

plotSection(nu, p, color='interp', lineWidth=5)
plt.axis('off')
mtexColorbar(title="Poisson's ratio")

# %% [markdown]
# The closed curve is only the admissible great circle, not the whole
# sphere. Its changing radius and colour show that the transverse response
# varies as the transverse direction turns around z.
# [Anisotropic Elasticity](https://mtex-toolbox.github.io/AnisotropicTheory_py.html) develops Poisson's ratio,
# shear modulus, and Young's modulus from the compliance tensor.

# %% [markdown]
# ## Specialized plots
#
# Physical tensor classes provide plots tailored to the property they
# represent. [Wave Velocities](https://mtex-toolbox.github.io/WaveVelocities_py.html) plots elastic-wave speed
# and polarization. [Birefringence](https://mtex-toolbox.github.io/BirefringenceDemo_py.html) plots the optical
# response, and [Piezo Electricity](https://mtex-toolbox.github.io/PiezoElectricity_py.html) plots a signed
# third-rank response.
#
# Continue with [Tensor Averages](https://mtex-toolbox.github.io/TensorAverage_py.html) to combine a
# single-crystal tensor with measured orientations or an ODF.

# %% [markdown]
# ## The maths behind directional magnitude
#
# For a rank-$r$ tensor $T$, MTEX contracts the same unit direction into
# every tensor slot:
#
# $$ Q(\vec x) = T_{i_1 \ldots i_r}\, x_{i_1} \cdots x_{i_r},
# \qquad |\vec x| = 1. $$
#
# This produces an [S2Fun](https://mtex-toolbox.github.io/S2FunConcept_py.html). Even-rank tensors satisfy
# $Q(-\vec x)=Q(\vec x)$, while odd-rank tensors reverse sign.
#
# Repeating the same direction also means that `Q` contains only the fully
# symmetric part of a general tensor. It is therefore a useful view, but it
# cannot encode every component of a higher-rank tensor.

# %% [markdown]
# ## Further reading
#
# * J. F. Nye, [Physical Properties of Crystals: Their Representation by Tensors and
#   Matrices](https://search.worldcat.org/title/11114089), Oxford University Press, 1985,
#   develops principal axes and tensor representation surfaces.
# * A. Marmier et al., [ElAM: A computer program for the analysis and representation of
#   anisotropic elastic properties](https://doi.org/10.1016/j.cpc.2010.08.033), _Computer
#   Physics Communications_ 181, 2102-2115, 2010, compares three-dimensional property
#   surfaces with planar sections.
# * E. H. Abramson et al., [The elastic constants of San Carlos olivine to 17
#   GPa](https://doi.org/10.1029/97JB00682), _Journal of Geophysical Research_ 102,
#   12253-12263, 1997, is the source of the olivine example.

# %%
setMTEXpref('defaultColorMap', WhiteJetColorMap)

# %% [markdown]
# ## Technical Details
#
# `eig` returns the eigenvalues first and the eigenvectors second, where MATLAB's
# `[e, lambda] = eig(T)` returns the vectors first. The loader reads the density of
# 3.355 g/cm$^3$ the olivine file states, which MATLAB's numeric interface leaves out.
