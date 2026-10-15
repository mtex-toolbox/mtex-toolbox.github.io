---
title: 'SO3FunRBF.discreteSample'
sidebar: function_reference_sidebar
permalink: SO3FunRBF.discreteSample_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunRBF.discreteSample.html
status: Reference
---
{% raw %}
A method of [SO3FunRBF](SO3FunRBF_index_py.html).

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
- any other callable of numbers (a def, a lambda, a NumPy ufunc such as np.exp, an
S1Fun): its values at 10000 points of the range.
- a list, a map, grains or boundary segments: n of its members, with replacement unless
withoutReplacement=True, which returns all members when n exceeds their number; an empty
list gives none without replacement and is refused otherwise.

MATLAB's 'compact' sampling and the indices of the members drawn from a list are not
provided.

## Input

| `f` | SO3Fun, S2Fun, a callable of numbers, or a list of orientations or directions, an EBSD map, grains or grain boundary segments |
| `n` | int, the size of the sample |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `None` | the spacing of the grid sampled, by default 1.5 degree on SO(3) and 1 degree on the sphere |
| `rng` | `None` | numpy.random.Generator, the random numbers |
| `withoutReplacement` | `False` | draw no member of a list twice (a list) |
| `range` | `(0, 1)` | the interval of a callable of numbers |

## Output

| `ori` | orientation, vector3d, ndarray or the class of the list |

## Example

Draw a reproducible orientation sample from a model texture, then compare its pole
positions with the model pole density. No experimental data are needed.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import (crystalFrame, orientation, unimodalODF, degree, discreteSample,
                  Miller, plotPF, mtexColorbar)

cs = crystalFrame('m-3m')
centre = orientation.byEuler(25*degree, 35*degree, 45*degree, cs)
odf = unimodalODF(centre, halfwidth=12*degree)
sample = discreteSample(odf, 300, rng=np.random.default_rng(9))
print('Sample size:', sample.size)
print('Median angle to centre (degrees):', round(float(np.median(sample.angle(centre))/degree), 2))
h = Miller(1, 0, 0, cs)
plotPF(odf, h, antipodal=True, resolution=5*degree)
mtexColorbar(title='Model pole density (mrd)')
plotPF(sample, h, antipodal=True, markerSize=3)
plt.show()
```

The first figure is the model density; the second contains sampled orientation poles.
The seed makes this draw reproducible. Sampling from a density differs from selecting members
of an existing list, where withoutReplacement=True prevents selecting the same member twice.

```text
Sample size: 300
Median angle to centre (degrees): 15.23
  I'm plotting 208 random orientations out of 300 given orientations
  You can specify the number of points by the option "points".
  The option "all" ensures that all data are plotted
```

![Example output for S2Fun.discreteSample](figures/python_reference/S2Fun.discreteSample-01.png)

![Example output for S2Fun.discreteSample](figures/python_reference/S2Fun.discreteSample-02.png)


## See also

[SO3Fun.calcComponents](SO3Fun.calcComponents_py.html), [calcDensity](calcDensity_py.html), [RandomSampling](RandomSampling_py.html), [S2FunSampling](S2FunSampling_py.html)

MATLAB's [SO3FunRBF.discreteSample](SO3FunRBF.discreteSample.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L1001">source</a></font>
{% endraw %}
