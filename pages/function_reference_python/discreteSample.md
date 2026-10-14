---
title: 'discreteSample'
sidebar: function_reference_sidebar
permalink: discreteSample_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: discreteSample.html
status: Reference
---
{% raw %}
a random sample of n orientations drawn from an orientation density, of directions from a
density on the sphere, of numbers from a density on an interval, or n random members of a list

## Syntax

<div class="mx-form" markdown="1">

```python
ori = discreteSample(odf, n)
```

N orientations of the density.

</div>

<div class="mx-form" markdown="1">

```python
ori = discreteSample(odf, n, resolution=2*degree)
```

From a coarser grid.

</div>

<div class="mx-form" markdown="1">

```python
v = discreteSample(sF, n)
```

N directions of a density on the sphere.

</div>

<div class="mx-form" markdown="1">

```python
x = discreteSample(lambda x: np.exp(-x), n, range=(0, 5))
```

N numbers of a density on an interval.

</div>

<div class="mx-form" markdown="1">

```python
ori = discreteSample(ori, n, withoutReplacement=True)
```

N members of a list, none twice.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = discreteSample(ebsd, n)
```

N measurements of a map, of any phases.

</div>

## Description

How the sample is drawn depends on what is sampled:

- a density on SO(3) or the sphere: grid nodes drawn with probability proportional to the
values, each moved by a random rotation of up to 1.5 times the grid resolution and turned by
a random element of each symmetry group. A finer resolution gives a more exact sample.
- a radial function (unimodalODF, calcDensity): exactly, a centre by its weight, the angle
by the distribution of the kernel and a uniform axis; a sum of radial functions term by term.
- a Bingham distribution: exactly, by rejection.
- a Python function of numbers (a def or a lambda, not a NumPy ufunc such as np.exp): its
values at 10000 points of the range.
- a list, a map, grains or boundary segments: n of its members, with replacement unless
withoutReplacement=True, which returns all members when n exceeds their number.

MATLAB's 'compact' sampling and the indices of the members drawn from a list are not
provided.

## Input

| `f` | SO3Fun, S2Fun, a Python function of numbers, or a list of orientations or directions, an EBSD map, grains or grain boundary segments |
| `n` | int, the size of the sample |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `None` | the spacing of the grid sampled, by default 1.5 degree on SO(3) and 1 degree on the sphere |
| `rng` | `None` | numpy.random.Generator, the random numbers |
| `withoutReplacement` | `False` | draw no member of a list twice (a list) |
| `range` | `(0, 1)` | the interval of a Python function |

## Output

| `ori` | orientation, vector3d, ndarray or the class of the list |

## See also

[SO3Fun.calcComponents](SO3Fun.calcComponents_py.html), [calcDensity](calcDensity_py.html), [RandomSampling](RandomSampling_py.html), [S2FunSampling](S2FunSampling_py.html)

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [ClusterDemo](ClusterDemo_py.html), [DensityEstimation](DensityEstimation_py.html), [OptimalKernel](OptimalKernel_py.html), [BoundaryPlots](BoundaryPlots_py.html), [CSLBoundaries](CSLBoundaries_py.html), [BinghamODFs](BinghamODFs_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [FibreODFs](FibreODFs_py.html), [RandomSampling](RandomSampling_py.html), [CombinedPlots](CombinedPlots_py.html), [PlotTypes](PlotTypes_py.html)

MATLAB's [discreteSample](discreteSample.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L988">source</a></font>
{% endraw %}
