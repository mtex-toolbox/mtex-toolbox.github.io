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
the de la Vallee Poussin kernel a density estimate of orientations or directions should use
(MATLAB calcKernel): 'UCV', the default, and 'conservative' select from the degree energies of
the sample and are bounded below by a noise floor unless noiseFloor=False
(docs/plans/halfwidth.md); 'klcv' scores ten candidate halfwidths by Kullback-Leibler cross
validation, 'ruleOfThumb' reads the nearest neighbour disorientations, 'magicRule' the sample
size and the symmetries alone; directions take the first two only. groups are the grain ids
of pixels, which the energies fold by; a map brings its own. weights weigh the sample,
bandwidth and halfwidths set the degrees and the candidates of the energies, rng their
subsamples, samplingSize the points 'klcv' scores

## Syntax

```python
calcKernel(o, method='UCV', samplingSize=1000, rng=None, *, groups=None, weights=None, bandwidth=None, halfwidths=None, noiseFloor=True)
```

```python
psi = calcKernel(ori)
psi = calcKernel(ebsd)  # the grain ids of a map after calcGrains
psi = calcKernel(ori, 'conservative', groups=grainId)
psi = calcKernel(ori, 'klcv', samplingSize=500)
psi = calcKernel(v, noiseFloor=False)  # an S2 kernel for directions
```

## Used on

[EBSD2ODF](EBSD2ODF_py.html), [OptimalKernel](OptimalKernel_py.html), [VectorsDensityEstimation](VectorsDensityEstimation_py.html)

MATLAB's [EBSD.calcKernel](EBSD.calcKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L810">source</a></font>
{% endraw %}
