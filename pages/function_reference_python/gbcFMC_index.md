---
title: 'The class gbcFMC'
sidebar: function_reference_sidebar
permalink: gbcFMC_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: gbcFMC_index.html
status: Reference
---
{% raw %}
the grain boundary criterion of fast multiscale clustering; MATLAB's gbcFMC

## Syntax

<div class="mx-form" markdown="1">

```python
crit = gbcFMC()
```

The default parameters.

</div>

<div class="mx-form" markdown="1">

```python
crit = gbcFMC(3.8, quatmax=5*degree)
```

More grains, a tighter outlier radius.

</div>

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd, criterion=gbcFMC(3.8, minPixel=5))
```

As the criterion of calcGrains.

</div>

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd, fmc=3.8)
```

The same by the keyword of calcGrains.

</div>

## Description

Fast multiscale clustering (McMahon et al.) coarsens the graph of neighbouring pixels into
a hierarchy of nested aggregates, each with its mean orientation and orientation spread.
Every pixel is read off at the scale where its aggregate stands out most.

There is no threshold angle. The coupling of two aggregates is measured against their own
spread, after what the lattice gradient of each explains, so a small misorientation
separates two uniform aggregates and does not separate the parts of a deformed grain.
cmaha is the main parameter: larger values give more grains.

Each indexed phase is clustered on its own; a pair of pixels of two phases is always a
boundary.

## Keywords

| keyword | default | description |
|---|---|---|
| `cmaha` |  | the sharpness of the rebias of the coarse couplings by the aggregates' spread; larger gives more grains |
| `cmaha0` |  | the decay of the initial coupling of two pixels per degree of misorientation |
| `quatmax` |  | the largest outlier radius of an aggregate, an angle |
| `alpha` |  | how readily a node becomes a seed of the coarse level: the share of its coupling that must reach the seeds |
| `gammaW` |  | the edge dilution: a coupling weaker than the average one of both its nodes divided by gammaW is dropped |
| `maxDelta` |  | the misorientation angle above which two pixels are never coupled |
| `minPixel` |  | the smallest region left standing; smaller ones join their neighbours |
| `verbose` |  | print the hierarchy of every phase |

## Output

| `crit` | gbcFMC, a grainBoundaryCriterion |

## References

- C. McMahon, B. Soe, A. Loeb, A. Vemulkar, M. Ferry, L. Bassman, Boundary identification in EBSD data with a generalization of fast multiscale clustering, Ultramicroscopy 133 (2013) 16-25

## See also

[calcGrains](EBSD.calcGrains_py.html), [gbcAngle](gbcAngle_index_py.html), [gbcSoft](gbcSoft_index_py.html), [GrainReconstruction](GrainReconstruction_py.html), [GrainReconstructionAdvanced](GrainReconstructionAdvanced_py.html)

## Members

| [clusterPhase](gbcFMC.clusterPhase_py.html) | FMC on the pixels isP of one phase over the pair list (ip, jp) within them |
| [evaluate](gbcFMC.evaluate_py.html) | 1 for every pair of pixels i, j that FMC puts into one cluster, 0 otherwise, each indexed phase clustered on its own |
| [gbcFMC](gbcFMC.gbcFMC_py.html) | the grain boundary criterion of fast multiscale clustering |
| [setMinPixel](gbcFMC.setMinPixel_py.html) | the same criterion with another smallest region left standing |

MATLAB's [gbcFMC_index](gbcFMC_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/fmc.py#L38">source</a></font>
{% endraw %}
