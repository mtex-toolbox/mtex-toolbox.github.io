# %% [markdown]
# # Vector Operations
#
# Three-dimensional vectors can be added, scaled, compared, and combined. Every operation
# works on a whole list at once, so a loop over vectors is usually unnecessary in MTEX.
#
# This page assumes the construction methods from
# [Defining Three Dimensional Vectors](https://mtex-toolbox.github.io/VectorDefinition_py.html). A reference frame is the
# coordinate system in which the vectors are expressed. The plotting convention below only
# lays that frame out on screen; it does not change the vectors.

# %%
import numpy as np

# %%
from mtex import *

# %%
plottingConvention.default('y↑→x')

# %% [markdown]
# ## Building New Vectors
#
# Sums and multiples of the specimen axes `vector3d.X`, `vector3d.Y`, and `vector3d.Z` are
# `vector3d` objects again.

# %%
v = vector3d.X + 2 * vector3d.Y
v

# %% [markdown]
# [+](https://mtex-toolbox.github.io/vector3d.plus.html) and [-](https://mtex-toolbox.github.io/vector3d.minus.html) add or subtract Cartesian
# components. [*](https://mtex-toolbox.github.io/vector3d.mtimes.html) scales a vector by a scalar. The inner product
# [dot](https://mtex-toolbox.github.io/vector3d.dot.html) and cross product [cross](https://mtex-toolbox.github.io/vector3d.cross.html) have their usual
# linear-algebra meanings. The order of the cross product matters.

# %%
u = dot(v, vector3d.Y) * vector3d.Y + 2 * cross(v, vector3d.Z)
u

# %% [markdown]
# The first term is $2\vec Y$, while the second is $4\vec X-2\vec Y$. Their Y components
# cancel, leaving $\vec u=4\vec X$. The arrows show the original vector in the XY plane and
# the result along positive X.

# %%
newMtexFigure()
arrow3d(v, label='v')
hold(True)
arrow3d(u, label='u')
hold(False)

# %% [markdown]
# ## Angles
#
# The [angle](https://mtex-toolbox.github.io/vector3d.angle.html) between two directions is a central measurement in
# texture analysis. One example is the tilt of a lattice-plane normal away from the sheet
# normal. The angle between complete crystal orientations is a different operation,
# introduced in [Misorientations](https://mtex-toolbox.github.io/MisorientationTheory_py.html).

# %%
angle(vector3d.X, vector3d.Y) / degree

# %% [markdown]
# MTEX returns angles in radians, hence the division by `degree`. The angle between
# directed vectors lies between $0$ and $180^\circ$. If the data represent axes instead,
# the answer is never obtuse; see [Axes and Antipodal Symmetry](https://mtex-toolbox.github.io/VectorsAxes_py.html).

# %% [markdown]
# ## Length and Normalization
#
# [norm](https://mtex-toolbox.github.io/vector3d.norm.html) returns the length of each vector.
# [normalize](https://mtex-toolbox.github.io/vector3d.normalize.html) divides each vector by its length.

# %%
norm(u)

# %% [markdown]
# ---

# %%
u = normalize(u)
u

# %% [markdown]
# Normalization does not change where a vector points, so it does not move its position
# in a spherical plot. It matters in calculations: the `dot` of two unit vectors is the
# cosine of their angle.

# %%
dot(normalize(v), vector3d.Y)

# %% [markdown]
# A zero vector has no direction. Consequently, `normalize(vector3d(0,0,0))` has undefined,
# NaN components.

# %% [markdown]
# ## Lists of Vectors
#
# `cat` joins vectors into one list, and an index selects an entry, the first one being
# `w[0]`. The general rules are covered in [Lists and Indexing](https://mtex-toolbox.github.io/ListsAndIndexing_py.html).

# %%
w = cat(v, u)
w[0]

# %% [markdown]
# Arithmetic on a list is entry by entry. Adding the single vector `v` to the two-entry
# list `w` adds it to both entries.

# %%
w = w + v
w

# %% [markdown]
# When both inputs are lists of the same size, binary operations pair their entries by
# position. The keyword `outer=True` of [angle](https://mtex-toolbox.github.io/vector3d.angle_outer.html) and
# [dot](https://mtex-toolbox.github.io/vector3d.dot_outer.html) compares every entry of one list with every entry of
# another.

# %% [markdown]
# ## Selecting from a List
#
# The following file contains directions stored as polar and azimuth angles. Its displayed
# summary confirms that the resulting `vector3d` list has 1,000 entries.

# %%
fname = mtexdatafile('vectors')
v = vector3d.load(fname, columnNames=['polar angle', 'azimuth angle'])
v

# %% [markdown]
# A logical condition retains only directions with a polar angle below $60^\circ$.

# %%
selected = v.theta < 60 * degree
scatter(v[selected], grid=True)

# %% [markdown]
# The empty outer ring shows that every plotted direction lies within $60^\circ$ of the Z
# axis. Count the omitted entries directly.

# %%
numOmitted = np.sum(~selected)
numOmitted

# %% [markdown]
# Thus, 236 of the 1,000 directions lie at least $60^\circ$ away from the Z axis.

# %% [markdown]
# ## Averaging a List
#
# [mean](https://mtex-toolbox.github.io/vector3d.mean.html) averages the Cartesian components. The result is a mean
# vector, which generally is not a unit vector.

# %%
m = mean(v)
m

# %% [markdown]
# Normalizing it gives the mean direction.

# %%
meanDirection = normalize(m)
meanDirection

# %% [markdown]
# Because every input vector has unit length, the length of `m` is the mean resultant
# length.

# %%
meanResultantLength = norm(m)
meanResultantLength

# %% [markdown]
# Here it is about 0.719. Identical unit directions give one; dispersed or mutually
# cancelling directions give a shorter result. Normalize unequal input vectors first when
# this directional statistic is intended.
#
# Opposite directed observations cancel. For axes, where `v` and `-v` mean the same thing,
# use `mean(v, antipodal=True)` instead; see
# [Axes and Antipodal Symmetry](https://mtex-toolbox.github.io/VectorsAxes_py.html).

# %% [markdown]
# ## Operations at a Glance
#
# These methods operate elementwise unless their description says otherwise.
#
# | | |
# |---|---|
# | [angle(v1,v2)](https://mtex-toolbox.github.io/vector3d.angle.html) | pointwise angle between vectors |
# | [angle(v1,v2,outer=True)](https://mtex-toolbox.github.io/vector3d.angle_outer.html) | all pairwise angles |
# | [dot(v1,v2)](https://mtex-toolbox.github.io/vector3d.dot.html) | pointwise inner product |
# | [dot(v1,v2,outer=True)](https://mtex-toolbox.github.io/vector3d.dot_outer.html) | all pairwise inner products |
# | [cross(v1,v2)](https://mtex-toolbox.github.io/vector3d.cross.html) | pointwise cross product |
# | [a*v](https://mtex-toolbox.github.io/vector3d.mtimes.html) | multiplication by a scalar |
# | [a*v](https://mtex-toolbox.github.io/vector3d.times.html) | componentwise scaling by an array of the same size |
# | [norm(v)](https://mtex-toolbox.github.io/vector3d.norm.html) | length of every vector |
# | [normalize(v)](https://mtex-toolbox.github.io/vector3d.normalize.html) | length scaled to one |
# | [orth(v)](https://mtex-toolbox.github.io/vector3d.orth.html) | an arbitrary orthogonal unit vector |
# | [orthProj(v,N)](https://mtex-toolbox.github.io/vector3d.orthProj.html) | component orthogonal to `N` |
# | [perp(v)](https://mtex-toolbox.github.io/vector3d.perp.html) | best-fit direction orthogonal to a list |
# | [v.sum()](https://mtex-toolbox.github.io/vector3d.sum.html) | componentwise sum over a list |
# | [mean(v)](https://mtex-toolbox.github.io/vector3d.mean.html) | mean vector, or mean axis for antipodal data |
# | [polar(v)](https://mtex-toolbox.github.io/vector3d.polar.html) | polar angle, azimuth, and length |
# | [rotate(v,rot)](https://mtex-toolbox.github.io/vector3d.rotate.html) | turn by a rotation |

# %% [markdown]
# ## Further Reading
#
# * N. I. Fisher, T. Lewis, and B. J. J. Embleton,
#   [Descriptive and ancillary methods, and sampling problems](https://doi.org/10.1017/CBO9780511623059.004),
#   in _Statistical Analysis of Spherical Data_, Cambridge University Press, 1987, treats
#   mean directions, resultant lengths, and the difference between vectorial and axial
#   data.

# %% [markdown]
# ## Next
#
# [Density Estimation](https://mtex-toolbox.github.io/VectorsDensityEstimation_py.html) replaces a long list of directions
# by a smooth function on the sphere. Read [Axes and Antipodal Symmetry](https://mtex-toolbox.github.io/VectorsAxes_py.html)
# before analysing data whose two signs are physically equivalent. Turning a direction into
# another one is the job of a [rotation](https://mtex-toolbox.github.io/Rotations.html).
