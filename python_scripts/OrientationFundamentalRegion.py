# %% [markdown]
# # Fundamental Regions
#
# Symmetry makes one physical orientation a set of equivalent rotations, see
# [Symmetry](https://mtex-toolbox.github.io/OrientationSymmetry_py.html). A *fundamental region* keeps one representative of
# each set so orientations can be plotted and analysed without symmetry-related copies.
#
# A fundamental region is not unique. MTEX normally chooses the compact region around the
# identity rotation. Points on its boundary can be tied between equivalent
# representatives, so "one representative" includes a consistent boundary convention.
#
# This page assumes the crystal-to-specimen map from
# [Theory](https://mtex-toolbox.github.io/DefinitionAsCoordinateTransform_py.html) and the axis--angle coordinates from
# [Rotation Representations](https://mtex-toolbox.github.io/RotationRepresentations_py.html). These regions are also the
# domains used for ODFs, rotation-axis distributions and rotation-angle distributions.

# %%
import numpy as np

from mtex import *

plottingConvention.default('y↑→x')

# %% [markdown]
# ## The Space of All Rotations
#
# Without rotational symmetry, axis--angle space is a ball of radius $180^\circ$. The
# direction of a point is the rotation axis, and its distance from the centre is the
# rotation angle.

# %%
# triclinic crystal symmetry
cs = crystalFrame('triclinic')

# the corresponding orientation space
oR_all = fundamentalRegion(cs)

plot(oR_all)

# %% [markdown]
# Place one half turn about the z axis into the ball.

# %%
rotZ = orientation.byAxisAngle(vector3d.Z, 180 * degree, cs)
hold(True)
plot(rotZ, markerFaceColor='b', markerSize=10)
hold(False)

# %% [markdown]
# Add families about the x and y axes in steps of $30^\circ$.

# %%
rotX = orientation.byAxisAngle(vector3d.X, np.arange(-180, 181, 30) * degree, cs)
rotY = orientation.byAxisAngle(vector3d.Y, np.arange(-180, 181, 30) * degree, cs)

hold(True)
plot(rotX, markerFaceColor='r', markerSize=10)
plot(rotY, markerFaceColor='g', markerSize=10)
hold(False)

# %% [markdown]
# Each family lies on a straight line through the centre because its rotations share an
# axis and differ only in angle. The $-180^\circ$ and $180^\circ$ ends of a line are the
# same rotation. Opposite points on the surface are therefore identified, which is why
# rotation space is not an ordinary solid ball.
#
# Sections of constant rotation angle are a flat view of the same geometry.

# %%
plotSection(rotZ, 'axisAngle', np.arange(30, 181, 30) * degree, markerFaceColor='b')
hold(True)
plot(rotX, markerFaceColor='g', add2all=True)
plot(rotY, markerFaceColor='r', add2all=True)
hold(False)

# %% [markdown]
# Notice that each x- and y-axis family passes through the same point at zero angle. At
# $180^\circ$, its two opposite axis directions again describe one rotation.
#
# ## What Crystal Symmetry Does
#
# Each proper symmetry operation folds the ball onto itself. A group with $n$ proper
# operations therefore cuts it into $n$ equal-volume regions. Orthorhombic `222` symmetry
# has four such operations.
#
# Crystal point groups can also contain reflections or inversion. Those improper
# operations do not create additional rotations, so [fundamentalRegion](https://mtex-toolbox.github.io/fundamentalRegion.html)
# uses the proper rotation group by default.

# %%
cs = crystalFrame('222')

oR = fundamentalRegion(cs)

plot(oR_all)
hold(True)
plot(oR, color='r')
hold(False)

# %% [markdown]
# The red region is one of four equivalent parts of the complete grey ball. MTEX chooses
# the central representative shown here.
#
# An orientation with specimen symmetry is reduced from the other side as well. Pass both
# symmetries as `fundamentalRegion(ori.CS, ori.SS)`; the role of the second group is
# developed in [Specimen Symmetry](https://mtex-toolbox.github.io/SpecimenSymmetry_py.html).
#
# ## Real Data Lands Inside It
#
# MTEX plots measured orientations in their fundamental region by default.

# %%
ebsd = mtexdata('forsterite', verbose=False)
plot(ebsd['Fo'].orientations, 'axisAngle')

# %% [markdown]
# No point crosses the boundary because the plotting code selects an equivalent
# representative inside it. This selection does not change the orientations stored in
# `ebsd`. MTEX reports that it samples 2,000 points for this dense plot. The sample changes
# only the figure, not the data or the fundamental region.
#
# Apply the same selection explicitly with
# [projectIntoFundamentalRegion](https://mtex-toolbox.github.io/orientation.project2FundamentalRegion.html). The method
# returns a new orientation array.

# %%
ori = ebsd['Fo'].orientations.projectIntoFundamentalRegion()

# %% [markdown]
# ## Recentring the Region
#
# The region need not be centred on the identity rotation. Centring it on a grain mean
# keeps a tight orientation cloud together when the standard region would split equivalent
# representatives across a boundary.
#
# [Grain reconstruction](https://mtex-toolbox.github.io/GrainReconstruction_py.html) is only supporting setup here. It
# supplies the mean orientation of the largest grain.

# %%
grains = calcGrains(ebsd)

id = np.argmax(grains.area)
largeGrain = grains[id]

# keep the indexed orientations inside the grain footprint
ori = ebsd[largeGrain].orientations
ori = ori[~ori.isnan()]

center = largeGrain.meanOrientation

# select representatives nearest to the grain mean
ori = ori.projectIntoFundamentalRegion(center)

# retain those explicit representatives when plotting
plot(ori, 'axisAngle', ignoreFundamentalRegion=True, all=True)
hold(True)
plot(center, markerFaceColor='r', markerSize=20)
hold(False)

# maximum angular distance from the mean, in degrees
maxSpread = np.max(angle(ori, center)) / degree
maxSpread

# %% [markdown]
# The points remain in a compact neighbourhood of the red mean orientation. The displayed
# maximum is just over $6^\circ$, rather than a spread over the whole region. The red
# marker need not be the Euclidean centre of the drawn coordinates; `angle` supplies the
# rotational distance.
#
# Recentring selected equivalent representatives. It did not rotate or otherwise change
# the measured orientations.
#
# ## Fundamental Regions of Misorientations
#
# A [misorientation](https://mtex-toolbox.github.io/MisorientationTheory_py.html) carries one crystal symmetry from each
# crystal. Its fundamental region is reduced by both groups and is correspondingly
# smaller.

# %%
oR = fundamentalRegion(ebsd['Fo'].CS, ebsd['En'].CS)
plot(oR)

# %% [markdown]
# Boundary misorientations between forsterite and enstatite lie inside this two-symmetry
# region.

# %%
plot(grains.boundary['Fo', 'En'].misorientation)

# %% [markdown]
# The points stay inside the outline even though the region is much smaller than the full
# ball. The phase order remains meaningful for a two-phase boundary, so MTEX does not
# identify these misorientations with their inverses.
#
# ## Antipodal Symmetry Between Grains of One Phase
#
# Between two grains of the *same* phase there is no way to say which grain is first. A
# misorientation and its inverse are therefore indistinguishable. In axis--angle
# coordinates the inverse has the same angle and the opposite axis. MTEX records this
# grain-exchange symmetry with the `antipodal` flag described for directions in
# [Axes and Antipodal Symmetry](https://mtex-toolbox.github.io/VectorsAxes_py.html).

# %%
oR = fundamentalRegion(ebsd['Fo'].CS, ebsd['Fo'].CS, antipodal=True)
plot(oR)

# %% [markdown]
# The antipodal region has half the volume of the corresponding region without
# grain-exchange symmetry. MTEX sets the flag on same-phase boundary misorientations by
# itself, as the following object summary shows.

# %%
mori = grains.boundary['Fo', 'Fo'].misorientation
mori

# %% [markdown]
# ---

# %%
plot(mori)

# %% [markdown]
# Each boundary now contributes one representative from the pair consisting of a
# misorientation and its inverse. No point needs the other half of the non-antipodal
# region.
#
# Removing the flag from this local variable draws the same rotations in the larger
# region, where the two orders count as different.

# %%
mori.antipodal = False
plot(mori)

# %% [markdown]
# The cloud now occupies the larger outline. These are not additional grain boundaries;
# only the choice of representative has changed.
#
# ## Axis--Angle Sections
#
# Sections of constant rotation angle flatten the larger region. The panel outline at each
# angle shows which rotation axes are allowed there.

# %%
plotSection(mori, 'axisAngle')

# %% [markdown]
# Opposite axes remain separate in these panels because `mori.antipodal` is currently
# false.
#
# Supplying `antipodal=True` to the plot identifies every pair of opposite axes.

# %%
plotSection(mori, 'axisAngle', antipodal=True)

# %% [markdown]
# The second gallery contains the same boundary data in smaller panel outlines. Its paired
# axes have collapsed onto one representative.
#
# ## How MTEX Chooses a Region
#
# MTEX chooses representatives by rotational distance. For a selected centre, it keeps the
# rotations that are at least as close to that centre as any of their symmetry
# equivalents. This nearest-representative cell is a Voronoi cell in rotation space.
#
# Midplanes between the centre and its symmetry equivalents bound the cell. A different
# centre gives a different, equally valid fundamental region. A point exactly on a
# midplane has two equally near representatives, which is the boundary tie noted at the
# start of the page.
#
# The figures on this page use axis--angle coordinates, where radial distance is the
# rotation angle. In Rodrigues--Frank coordinates the same bisectors are Euclidean planes,
# so fundamental regions appear as plane-faced polyhedra.
# [Rotation Representations](https://mtex-toolbox.github.io/RotationRepresentations_py.html) compares these coordinate
# choices.
#
# ## References
#
# * A. Morawiec, [Orientations and Rotations: Computations in Crystallographic Textures](https://doi.org/10.1007/978-3-662-09156-2),
#   Springer, 2004, develops the geometry of rotation space, symmetry and misorientation
#   distributions.
# * A. Morawiec and D. P. Field, [Rodrigues Parameterization for Orientation and Misorientation Distributions](https://doi.org/10.1080/01418619608243708),
#   _Philosophical Magazine A_ 73 (1996), 1113-1130, derives asymmetric domains for all
#   crystal symmetries in Rodrigues space.
# * R. Krakow _et al._, [On Three-Dimensional Misorientation Spaces](https://doi.org/10.1098/rspa.2017.0274),
#   _Proceedings of the Royal Society A_ 473 (2017), 20170274, gives a practical guide to
#   symmetry-reduced axis--angle spaces for orientation-relationship analysis.
#
# ## Next
#
# Continue with [Specimen Symmetry](https://mtex-toolbox.github.io/SpecimenSymmetry_py.html) for a second symmetry acting on
# orientations. The counterpart for directions is the
# [Fundamental Sector](https://mtex-toolbox.github.io/FundamentalSector_py.html).
#
# The next chapter begins with [Misorientations](https://mtex-toolbox.github.io/Misorientations.html).
# [Grain Exchange Symmetry](https://mtex-toolbox.github.io/MisorientationGrainExchangeSym_py.html) develops the same-phase
# distinction used above.
