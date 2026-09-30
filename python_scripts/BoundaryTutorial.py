# %% [markdown]
# # Grain Boundary Tutorial
#
# This tutorial starts with reconstructed grains and asks what lies between them. It
# selects one phase pair, maps the misorientation angle, and finds the dominant angle
# population in a magnesium specimen.
#
# Read [the grain tutorial](https://mtex-toolbox.github.io/GrainTutorial_py.html) first if grain reconstruction or inverse
# pole figure colours are new to you. [General Concepts](https://mtex-toolbox.github.io/GeneralConcepts.html) explains how
# one MTEX object holds a vectorized list of grains or boundary segments.
#
# A grain boundary is a segment between two neighbouring EBSD pixels that belong to
# different grains. MTEX stores the complete boundary network as a
# [grainBoundary](https://mtex-toolbox.github.io/grainBoundary.grainBoundary.html) object with one entry per segment.

# %%
import matplotlib.pyplot as plt
import numpy as np

from mtex import *

plottingConvention.default('y↑→x')

# load the magnesium example without displaying the full EBSD summary
ebsd = mtexdata('twins', verbose=False)

# reconstruct grains using an explicit example threshold
grains = calcGrains(ebsd, angle=15 * degree)

# smooth the pixel staircases before measuring boundary trace lengths
grains = grains.smoothBoundary()

# display the grain summary
grains

# %% [markdown]
# ## See the grains before measuring their boundaries
#
# The displayed summary reports 121 magnesium grains. The 15 degree reconstruction
# threshold is an example parameter, not a universal grain definition.
# [Grain Reconstruction](https://mtex-toolbox.github.io/GrainReconstruction_py.html) explains how to choose and report it.
#
# [smoothBoundary](https://mtex-toolbox.github.io/grain2d.smoothBoundary.html) simplifies, refines, and smooths the pixel
# staircase by default. This improves trace geometry but changes the number and length of
# segments. [Grain Smoothing](https://mtex-toolbox.github.io/GrainSmoothing_py.html) develops that choice.

# %%
# create one explicit inverse pole figure colour key
ipfKey = ipfColorKey(grains.CS)
grainColor = ipfKey.orientation2color(grains.meanOrientation)

# plot one mean orientation colour per grain
plot(grains, grainColor)

# %% [markdown]
# ## Reading the orientation map
#
# The narrow lamellae crossing the larger grains have colours that differ abruptly from
# their surroundings. Their shape and orientation contrast make them candidates for twins,
# but the boundary relationship must still be measured.

# %% [markdown]
# ## The boundary list
#
# The boundary network is a list in its own right. Displaying it groups the segments by the
# phases on their two sides.

# %%
gB = grains.boundary
gB

# %% [markdown]
# ## Reading the boundary summary
#
# The summary reports 3359 segments after smoothing. Of these, 2751 lie between two
# magnesium grains and 608 form the outer rim, which appears in the `notIndexed` row
# because there is no grain on its other side.
#
# In a general map the same row can also contain boundaries next to `notIndexed`
# measurements. `notIndexed` is the phase for measurements whose diffraction patterns could
# not be indexed.
#
# The outer-rim segments have no second indexed lattice and therefore no crystallographic
# misorientation. Two phase names select the segments that do have magnesium on both sides.

# %%
gB_MgMg = gB['Magnesium', 'Magnesium']
gB_MgMg

# %% [markdown]
# ## Misorientation angle along the boundary
#
# A misorientation is the rotation that carries one crystal lattice onto the other. Crystal
# symmetry gives many equivalent rotations for the same physical relationship. The `angle`
# reports the smallest symmetry-equivalent rotation angle, also called the disorientation
# angle.
#
# A boundary has no preferred side. MTEX therefore gives same-phase boundary
# misorientations grain-exchange symmetry, so a rotation and its inverse represent the same
# relationship. See [Grain Exchange Symmetry](https://mtex-toolbox.github.io/MisorientationGrainExchangeSym_py.html).

# %%
# store one disorientation angle per magnesium boundary segment in degrees
misorientationAngle = gB_MgMg.misorientation.angle() / degree

# colour every selected segment by that angle
plot(gB_MgMg, misorientationAngle, lineWidth=2)
mtexColorbar(title='minimum misorientation angle (degree)')

# %% [markdown]
# ## Reading the angle map
#
# Long lamellar boundaries share nearly the same high-angle colour. Other interfaces cover a
# broader angular range, so the map already suggests one repeated orientation relationship.

# %% [markdown]
# ## Measure the dominant angle population
#
# The next two displayed values summarize segments, not whole physical interfaces. The
# median angle is 84.7 degrees, and 58 percent of the segments have angles above 80
# degrees.

# %%
medianAngle = np.median(misorientationAngle)
medianAngle

# %%
fractionAbove80 = np.mean(misorientationAngle > 80)
fractionAbove80

# %% [markdown]
# ## Reading the segment statistics
#
# Segment counts depend on how a traced curve was sampled. For a boundary population it is
# usually more meaningful to weight every segment by its trace length. The histogram below
# sums trace length in 2 degree bins.

# %%
edges = np.arange(0, 95, 2)
traceLength, _ = np.histogram(misorientationAngle, edges, weights=gB_MgMg.segLength)

# display the angular range containing the most boundary trace length
peakBin = np.argmax(traceLength)
peakRange = edges[peakBin:peakBin + 2]
peakRange

# %%
# plot total boundary trace length in each angular bin
histogram(misorientationAngle, edges, weights=gB_MgMg.segLength)
xlabel('minimum misorientation angle (degree)')
ylabel('boundary trace length (micrometres)')
plt.title('Magnesium to magnesium boundaries')

# %% [markdown]
# ## Reading the angle distribution
#
# The dominant bin spans 86 to 88 degrees. Its position agrees with the 86.3 degree
# disorientation of the common magnesium extension-twin relationship, and the contributing
# traces are the lamellae seen above.
#
# An angle match alone does not identify a twin. A robust test compares the complete
# misorientation, including its axis, with the ideal relationship and checks where the
# selected boundaries occur. [Twinning](https://mtex-toolbox.github.io/TwinningBoundaries_py.html) performs that test and
# [Merging Grains](https://mtex-toolbox.github.io/GrainMerge_py.html) reconnects the twin with its host.

# %% [markdown]
# ## What a two-dimensional map leaves unknown
#
# A macroscopic grain boundary has five degrees of freedom. Three describe the
# misorientation and two describe the boundary-plane normal. A polished two-dimensional
# section records only the line where that plane cuts the surface, called its trace; the
# plane inclination is not measured directly.
#
# The angle map therefore describes the lattice relationship across each trace, not the
# complete boundary character. Three-dimensional mapping or a stereological estimate over
# many traces is needed for the missing plane information.
# [Boundary Normal Distribution](https://mtex-toolbox.github.io/BoundaryNormalDistribution_py.html) explains the
# planar-section approach.

# %% [markdown]
# ## Next
#
# Continue with [Grain Boundaries](https://mtex-toolbox.github.io/GrainBoundaries.html) for the boundary chapter.
# [Selecting Boundaries](https://mtex-toolbox.github.io/BoundarySelect_py.html) develops phase and property selections, while
# [Boundary Properties](https://mtex-toolbox.github.io/BoundaryProperties_py.html) explains the geometry and paired pixel
# information stored per segment.
#
# [Boundary Misorientations](https://mtex-toolbox.github.io/BoundaryMisorientations_py.html) develops angles and axes.
# [Misorientation Distribution Functions](https://mtex-toolbox.github.io/MisorientationDistributionFunction_py.html) explains
# the reference distributions needed before a boundary population is compared with random
# orientations.

# %% [markdown]
# ## Further reading
#
# * A.P. Sutton and R.W. Balluffi,
#   [Interfaces in Crystalline Materials](https://search.worldcat.org/title/31166519),
#   Oxford University Press, 1995.
# * A.P. Sutton, E.P. Banks and A.R. Warwick,
#   [The five-dimensional parameter space of grain boundaries](https://doi.org/10.1098/rspa.2015.0442),
#   Proceedings of the Royal Society A 471 (2015), 20150442.
# * D.M. Saylor, B.S. El-Dasher, B.L. Adams and G.S. Rohrer,
#   [Measuring the five-parameter grain-boundary distribution from observations of planar sections](https://doi.org/10.1007/s11661-004-0147-z),
#   Metallurgical and Materials Transactions A 35 (2004), 1981-1989.
# * J.W. Christian and S. Mahajan,
#   [Deformation twinning](https://doi.org/10.1016/0079-6425(94)00007-7),
#   Progress in Materials Science 39 (1995), 1-157.

# %% [markdown]
# ## Technical Details
#
# `smoothBoundary` leaves 3363 segments for MATLAB's 3359 (2755 for 2751 between two
# magnesium grains), so the median angle is 84.55 degrees for MATLAB's 84.68 and the
# fraction above 80 degrees 0.5819 for 0.5816; the peak bin, 86 to 88 degrees, agrees. The
# trace length per bin is one `np.histogram` with `weights=segLength`.
