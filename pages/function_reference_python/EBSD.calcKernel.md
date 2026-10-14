---
title: 'EBSD.calcKernel'
sidebar: function_reference_sidebar
permalink: EBSD.calcKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.calcKernel.html
status: Reference
---
{% raw %}
the kernel a density estimate of orientations or directions should use, a de la Vallee
Poussin kernel of the halfwidth chosen from the sample

## Syntax

By unbiased cross validation of the degree energies:

```python
psi = calcKernel(ori)
```

A map, folded by its grain ids after calcGrains:

```python
psi = calcKernel(ebsd)
```

The conservative choice, pixels grouped by grain:

```python
psi = calcKernel(ori, 'conservative', groups=grainId)
```

Kullback-Leibler cross validation, as MATLAB's default:

```python
psi = calcKernel(ori, 'klcv', samplingSize=500)
```

An S2 kernel for directions, no lower bound:

```python
psi = calcKernel(v, noiseFloor=False)
```

'UCV', the default, and 'conservative' select from the degree energies of the sample
(docs/plans/halfwidth.md) and are bounded below by a noise floor unless noiseFloor=False; they
take directions too. The others are MATLAB's: 'klcv' scores ten halfwidths by Kullback-Leibler
cross validation, 'ruleOfThumb' reads the nearest neighbour disorientations, 'magicRule' the
sample size and the symmetries alone; above 5000 orientations they score a subsample and
scale the result. MATLAB's default is 'klcv'. The pixels of a map are no independent draws:
'klcv', 'ruleOfThumb' and 'magicRule' refuse orientations taken from a map (ori.notIID), and
the energies need the grain ids, which a map brings along after calcGrains. MATLAB's 'LSCV'
and 'BCV' are not provided.

## Input

| | |
|---|---|
| `o` | orientation, vector3d, or EBSD |
| `method` | 'UCV', 'conservative', 'klcv', 'ruleOfThumb' or 'magicRule', in any case |

## Output

| | |
|---|---|
| `psi` | SO3DeLaValleePoussinKernel, or S2DeLaValleePoussinKernel for directions |

## Keywords

| | default | |
|---|---|---|
| `samplingSize` | `1000` | the number of orientations 'klcv' scores |
| `rng` | `None` | numpy.random.Generator of the subsamples; the energies use a fixed seed by default |
| `groups` | `None` | the grain id of every orientation, by which the energies fold |
| `weights` | `None` | the weights of the sample |
| `bandwidth` | `None` | the degree up to which the energies are computed, by default 64 on SO(3) (doubled when the choice lies at the edge), 256 on the sphere, 32 for 'conservative' |
| `halfwidths` | `None` | the candidate halfwidths of the energies |
| `noiseFloor` | `True` | bound the halfwidth below by the noise of the energies |

## See also

[calcDensity](calcDensity_py.html), [EBSD2ODF](EBSD2ODF_py.html), [DensityEstimation](DensityEstimation_py.html)

## Used on

[EBSD2ODF](EBSD2ODF_py.html), [OptimalKernel](OptimalKernel_py.html), [VectorsDensityEstimation](VectorsDensityEstimation_py.html)

MATLAB's [EBSD.calcKernel](EBSD.calcKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L925">source</a></font>
{% endraw %}
