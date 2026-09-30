# %% [markdown]
# # Defining Three-Dimensional Vectors
#
# A [vector3d](https://mtex-toolbox.github.io/vector3d.vector3d.html) stores one or more vectors through their Cartesian
# components $x$, $y$ and $z$. A reference frame identifies the coordinate system in which
# data are expressed. It includes an identity, basis and default plotting convention. The
# components are coordinates in that frame.
#
# A vector also has a length. When only its direction matters, dividing out that length
# gives a point on the unit sphere. This spherical view underlies specimen directions, pole
# figures and crystal directions throughout MTEX. Crystal directions add lattice
# information and are introduced in [Miller Indices](https://mtex-toolbox.github.io/CrystalDirections_py.html).
#
# This page assumes basic NumPy arrays and indexing. See
# [Lists and Indexing](https://mtex-toolbox.github.io/ListsAndIndexing_py.html) if those are new to you.

# %%
from mtex import *

# %%
plottingConvention.default('y↑→x')

# %% [markdown]
# ## Cartesian Coordinates
#
# Define a vector directly from its three Cartesian components.

# %%
v = vector3d(1, 2, 3)
v

# %% [markdown]
# The summary reports one vector and lists its $x$, $y$ and $z$ components. A spherical
# plot uses its direction and therefore divides out its length.

# %%
plot(v, grid=True, upper=True)

# %% [markdown]
# The point lies in the upper-right quadrant because $x$ and $y$ are positive. It lies
# inside the rim because $z$ is positive. Multiplying all three components by the same
# positive number would not move this point. [Spherical Projections](https://mtex-toolbox.github.io/SphericalProjections_py.html)
# explains how the sphere is mapped onto the page.
#
# The [norm](https://mtex-toolbox.github.io/vector3d.norm.html) is the stored vector's length.

# %%
norm(v)

# %% [markdown]
# For $(1,2,3)$ the result is $\sqrt{14}$, displayed here as 3.7417.
# [normalize](https://mtex-toolbox.github.io/vector3d.normalize.html) divides each component by that length, so the
# result has length one without changing direction.

# %%
norm(normalize(v))

# %% [markdown]
# A zero vector has no direction, so its normalized components are undefined.

# %%
normalize(vector3d(0, 0, 0))

# %% [markdown]
# The output contains three `NaN` values. Check for zero length before normalizing measured
# data.
#
# Individual coordinates can be read and changed as properties.

# %%
v.x

# %% [markdown]
# ---

# %%
v.x = 0
v

# %% [markdown]
# The displayed row is now $(0,2,3)$. Changing a component preserves neither the previous
# length nor the previous direction.

# %% [markdown]
# ## Polar Coordinates
#
# A direction can also be described by two angles. The *polar angle* $\theta$ is measured
# away from the Z axis. The *azimuth angle* $\rho$ is measured in the XY plane away from
# the X axis. [vector3d.byPolar](https://mtex-toolbox.github.io/vector3d.byPolar.html) takes the angles in that order and
# returns a unit vector.

# %%
v = vector3d.byPolar(60 * degree, 45 * degree)
v

# %% [markdown]
# MTEX stores angles in radians. Multiplying by `degree` converts a value in degrees to
# radians for input.

# %%
plot(v, grid=True, upper=True)

# %% [markdown]
# The point is $60^\circ$ from Z and turns $45^\circ$ from X towards Y. Thus $\theta$
# controls its distance from the centre of this spherical plot, while $\rho$ controls the
# direction around the centre.
#
# The angle properties read back in radians. Divide by `degree` to display them in degrees.

# %%
v.rho / degree  # azimuth angle in degrees

# %% [markdown]
# ---

# %%
v.theta / degree  # polar angle in degrees

# %% [markdown]
# ## Basis Directions and Reference Frames
#
# The constants `vector3d.X`, `vector3d.Y` and `vector3d.Z` spell the three Cartesian basis
# directions. They make combinations easier to read.

# %%
v = vector3d.X + 2 * vector3d.Y
v

# %% [markdown]
# The summary shows the components $(1,2,0)$. Fresh `vector3d` data are frame-free. They
# are not tied to a named measurement, rolling or geological frame. At plotting time they
# follow the session's default specimen frame. [Axes Alignment](https://mtex-toolbox.github.io/AxesAlignment_py.html)
# explains named frames and their plotting conventions.

# %% [markdown]
# ## Many Directions at Once
#
# One `vector3d` variable can hold a whole array of vectors. MTEX operations act on the
# array at once, so loops over individual vectors are usually unnecessary. Passing
# coordinate arrays creates one vector per entry.

# %%
v = vector3d([1, 2, 3, 4, 5], 0, 1)
v

# %% [markdown]
# The displayed summary contains five rows. The array has a shape and uses the same
# indexing rules as a NumPy array, so the first entry is `v[0]`.

# %%
v.shape

# %% [markdown]
# ---

# %%
v[1]

# %% [markdown]
# The second row, $(2,0,1)$, is returned as another `vector3d` object. When coordinates are
# already arranged in a matrix, `vector3d.byXYZ` reads one vector from each row.

# %%
xyz = [[1, 0, 0], [0, 1, 0], [1, 1, 1]]
v = vector3d.byXYZ(xyz)
v

# %% [markdown]
# The three output rows match the three matrix rows. Prefer `byXYZ` when the row convention
# matters. The constructor also accepts coordinate matrices and reads them by rows as well,
# one vector per row of three components.
#
# [vector3d.rand](https://mtex-toolbox.github.io/vector3d.rand.html) creates uniformly distributed random unit
# directions. The following call creates 100 directions. Its long object summary is not
# useful here, so the assignment keeps it out of the page.

# %%
v = vector3d.rand(100)

# %%
plot(v, upper=True, grid=True, markerSize=4)

# %% [markdown]
# The plot handles the complete array in one call. Only directions on the upper hemisphere
# appear because of `upper`; the option does not identify a direction with its negative.

# %% [markdown]
# ## Plotting Conventions
#
# A [plotting convention](https://mtex-toolbox.github.io/plottingConvention.html) states how a reference frame is laid
# out on screen. It does not change the vector or re-express it in another frame. Pass
# `how2plot` to change one plot.

# %%
v = vector3d(1, 2, 3)

# %%
plot(v, how2plot='z←↑y', grid=True)

# %% [markdown]
# The axis annotation now shows Z pointing left and Y pointing up. The components and
# length of `v` have not changed. To align subsequent plots, use the explicit string form
# of `plottingConvention.default` shown at the start of this page.
# [Axes Alignment](https://mtex-toolbox.github.io/AxesAlignment_py.html) develops frame changes and plotting conventions in
# full.

# %% [markdown]
# ## Directions and Axes
#
# A direction distinguishes its two ends, so `v` and `-v` point in different directions.
# An axis treats those two signs as equivalent. The `upper` option only selects a
# hemisphere. It does not turn a direction into an axis.
# [Axes and Antipodal Symmetry](https://mtex-toolbox.github.io/VectorsAxes_py.html) explains how the `antipodal` flag
# changes angles, means and densities.

# %% [markdown]
# ## Further Reading
#
# * [ISO 80000-2:2019, Quantities and units - Part 2: Mathematics](https://www.iso.org/standard/64973.html)
#   standardizes mathematical notation for vectors and their coordinates.
# * K. V. Mardia and P. E. Jupp, [Directional Statistics](https://doi.org/10.1002/9780470316979),
#   Wiley, 1999. This textbook develops the statistical treatment of directions and axes
#   on the circle and sphere.

# %% [markdown]
# ## Next
#
# [Operations](https://mtex-toolbox.github.io/VectorsOperations_py.html) develops angles, dot and cross products,
# normalization and means over arrays. Read [Axes and Antipodal Symmetry](https://mtex-toolbox.github.io/VectorsAxes_py.html)
# next. It explains how to treat plane normals and conventional diffraction poles as axes.
