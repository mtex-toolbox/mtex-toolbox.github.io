# %% [markdown]
# # Plotting Spherical Functions
#
# A spherical function has no preferred flat view. The useful plot depends on the question
# being asked.
#
# Use colour for values and contours for level sets. Use three-dimensional shape, a planar
# section, or harmonic content for other questions.
#
# This page compares these views. Its examples use objects from
# [Concept](https://mtex-toolbox.github.io/S2FunConcept_py.html) and [Operations](https://mtex-toolbox.github.io/S2FunOperations_py.html).
#
# ## Example functions
#
# The examples use the smiley function for recognisable spatial features and an oscillatory
# function for a more revealing planar section.

# %%
import matplotlib.pyplot as plt
import numpy as np

from mtex import *

# the smiley
plottingConvention.default('y↑→x')
sF1 = S2Fun.smiley()

# some oscillatory function
f = lambda v: 0.1 * (v.theta + np.sin(8 * v.x) * np.sin(8 * v.y))
sF2 = S2FunHarmonic.quadrature(f, bandwidth=150)

# %% [markdown]
# ## Smooth colour plot
#
# [pcolor](https://mtex-toolbox.github.io/S2Fun.pcolor.html) draws function values as colour without contour lines. The
# more general [plot](https://mtex-toolbox.github.io/S2Fun.plot.html) command produces the same default view.

# %%
plot(sF1)
mtexColorbar(title='function value')

# %% [markdown]
# The eyes and mouth appear as smooth colour regions. This view makes the spatial pattern
# easy to recognise, and the colour bar translates colour into function value. The plot does
# not mark particular value levels.
#
# ## Contour plots
#
# [contour](https://mtex-toolbox.github.io/S2Fun.contour.html) draws level lines. [contourf](https://mtex-toolbox.github.io/S2Fun.contourf.html) fills
# the regions between those lines.

# %%
newMtexFigure(layout=[1, 2])
contour(sF1, upper=True)
mtexTitle('Contour lines')
nextAxis(1, 2)
contourf(sF1, upper=True)
mtexTitle('Filled contours')

# %% [markdown]
# Both panels trace the same levels on the upper hemisphere. The filled view makes their
# ordering easier to read, while the line view leaves the underlying area unobscured.
#
# ## Freely rotatable 3D plot
#
# [plot3d](https://mtex-toolbox.github.io/S2Fun.plot3d.html) draws a three-dimensional view that can be rotated freely
# with the mouse in an interactive figure.

# %%
plot3d(sF1)
mtexTitle('Values on the sphere')

# %% [markdown]
# Here the radius stays fixed and colour carries the function value. This view reveals how
# features continue around the sphere without changing the geometry to encode amplitude.
#
# ## Set the 3D camera
#
# A [plotting convention](https://mtex-toolbox.github.io/plottingConvention.html) specifies how a reference frame is laid
# out on screen. Its `north` and `outOfScreen` directions provide a reproducible camera for
# the static published view.

# %%
how2plot = plottingConvention()
how2plot.north = yvector
how2plot.outOfScreen = vector3d(1, 0, 2)
setCamera(how2plot)

# %% [markdown]
# The camera now places the $y$ direction at the top and looks along the specified
# combination of the $x$ and $z$ directions. The function itself has not been rotated.
#
# ## Radial surface plot
#
# [surf](https://mtex-toolbox.github.io/S2Fun.surf.html) transforms the radius of the sphere according to the function
# value. Colour and radial displacement therefore encode the same value. By default MTEX
# rescales a real scalar function before using it as radius. The rescaling keeps relative
# variation visible.

# %%
surf(sF1)
plt.gca().set_axis_off()
setCamera(how2plot)
mtexTitle('Values as radius and colour')

# %% [markdown]
# Peaks extend farther from the centre, while low values pull the surface inward. The
# camera is unchanged, so this shape can be compared directly with the previous
# three-dimensional view.
#
# The `scaling=False` flag skips the default rescaling. In that case the radial distance is the
# absolute function value, which is useful only when the original magnitude makes a readable
# surface.
#
# ## Planar section
#
# [plotSection](https://mtex-toolbox.github.io/S2Fun.plotSection.html) draws the intersection of the radial surface with a
# plane. The normal vector `N` selects that plane.

# %%
N = zvector
plotSection(sF2, N, color='interp', lineWidth=10)
mtexColorMap('spring')
mtexTitle('Section in the xy plane')

# %% [markdown]
# With `N = zvector`, the section lies in the $xy$ plane. The repeated lobes expose the
# oscillation from the sine factors more clearly than a single projected hemisphere would.
#
# ## Harmonic spectrum
#
# [plotSpectrum](https://mtex-toolbox.github.io/S2FunHarmonic.plotSpektra.html) groups the spherical harmonic coefficients
# by degree. This view describes frequency content rather than position on the sphere.

# %%
plotSpectrum(sF1, fontSize=15, lineWidth=2, figSize='small')
plt.xlim(0, 40)

# %% [markdown]
# Low degrees describe broad variation. The non-zero coefficients at higher degrees supply
# the sharper facial details. The horizontal axis is limited to degree 40 so that this
# useful part of the spectrum is legible.
#
# ## Choose a view
#
# Use a smooth colour plot to locate values. Use contours to compare levels. Use a radial
# surface to emphasise amplitude. A section isolates one plane. The spectrum reveals
# harmonic scale. The linked method pages list the more specific plot options for each
# representation.
#
# ## References
#
# * F. Bachmann, R. Hielscher and H. Schaeben,
#   [Texture Analysis with MTEX - Free and Open Source Software Toolbox](https://doi.org/10.4028/www.scientific.net/SSP.160.63),
#   _Solid State Phenomena_ 160, 63--68, 2010. This article shows how MTEX visualises
#   directional quantities in texture analysis.
#
# ## Next
#
# Continue with [Approximation and Interpolation](https://mtex-toolbox.github.io/S2FunApproximationInterpolation_py.html) to
# construct a spherical function from values at discrete directions and compare the
# available representations.
#
# ## Technical Details
#
# MATLAB's `colormap spring`, `axis off` and `xlim` are matplotlib's calls here:
# `mtexColorMap('spring')`, `plt.gca().set_axis_off()` and `plt.xlim`. MATLAB's
# `close all` between the figures has no counterpart; every plot opens its own figure.
