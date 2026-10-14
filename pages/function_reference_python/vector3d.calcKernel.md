---
title: 'vector3d.calcKernel'
sidebar: function_reference_sidebar
permalink: vector3d.calcKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.calcKernel.html
status: Reference
---
{% raw %}
the kernel a density estimate of orientations or directions should use, a de la Vallee
Poussin kernel of the halfwidth chosen from the sample

## Syntax

<div class="mx-form" markdown="1">

```python
psi = calcKernel(ori)
```

By unbiased cross validation of the degree energies.

</div>

<div class="mx-form" markdown="1">

```python
psi = calcKernel(ebsd)
```

A map, folded by its grain ids after calcGrains.

</div>

<div class="mx-form" markdown="1">

```python
psi = calcKernel(ori, 'conservative', groups=grainId)
```

The conservative choice, pixels grouped by grain.

</div>

<div class="mx-form" markdown="1">

```python
psi = calcKernel(ori, 'klcv', samplingSize=500)
```

Kullback-Leibler cross validation, as MATLAB's default.

</div>

<div class="mx-form" markdown="1">

```python
psi = calcKernel(v, noiseFloor=False)
```

An S2 kernel for directions, no lower bound.

</div>

## Description

The method chooses the halfwidth:

- 'UCV', the default: the halfwidth that minimises an unbiased estimate of the error of the
density, computed from the degree energies of the sample. Orientations and directions.
- 'conservative': the same error with lower confidence bounds on the energies, which gives a
wider kernel that does not undersmooth. Orientations and directions.
- 'klcv': Kullback-Leibler cross validation of ten halfwidths, MATLAB's default.
- 'ruleOfThumb': from the distances of every orientation to its nearest neighbour.
- 'magicRule': from the sample size and the symmetries alone.

'UCV' and 'conservative' never go below the halfwidth at which the noise of the sample would
show as false peaks, unless noiseFloor=False.

Neighbouring pixels of one grain are no independent draws. For a map, 'UCV' and
'conservative' therefore group the pixels by their grain, which needs the grain ids that
calcGrains writes into the map. 'klcv', 'ruleOfThumb' and 'magicRule' refuse orientations
taken from a map; select from the grain mean orientations instead.

Above 5000 orientations, 'klcv', 'ruleOfThumb' and 'magicRule' score a random subsample and
scale the result to the whole sample. MATLAB's 'LSCV' and 'BCV' are not provided.

## Input

| `o` | orientation, vector3d, or EBSD |
| `method` | 'UCV', 'conservative', 'klcv', 'ruleOfThumb' or 'magicRule', in any case |

## Keywords

| keyword | default | description |
|---|---|---|
| `samplingSize` | `1000` | the number of orientations 'klcv' scores |
| `rng` | `None` | numpy.random.Generator of the subsamples; the energies use a fixed seed by default |
| `groups` | `None` | the grain id of every orientation, by which the energies fold |
| `weights` | `None` | the weights of the sample |
| `bandwidth` | `None` | the degree up to which the energies are computed, by default 64 on SO(3) (doubled when the choice lies at the edge), 256 on the sphere, 32 for 'conservative' |
| `halfwidths` | `None` | the candidate halfwidths of the energies |
| `noiseFloor` | `True` | bound the halfwidth below by the noise of the energies |

## Output

| `psi` | SO3DeLaValleePoussinKernel, or S2DeLaValleePoussinKernel for directions |

## See also

[calcDensity](calcDensity_py.html), [EBSD2ODF](EBSD2ODF_py.html), [DensityEstimation](DensityEstimation_py.html)

## Used on

[EBSD2ODF](EBSD2ODF_py.html), [OptimalKernel](OptimalKernel_py.html), [VectorsDensityEstimation](VectorsDensityEstimation_py.html)

MATLAB's [vector3d.calcKernel](vector3d.calcKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L1116">source</a></font>
{% endraw %}
