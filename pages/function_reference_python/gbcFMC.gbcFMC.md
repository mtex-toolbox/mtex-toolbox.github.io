---
title: 'gbcFMC.gbcFMC'
sidebar: function_reference_sidebar
permalink: gbcFMC.gbcFMC_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: gbcFMC.gbcFMC.html
status: Reference
---
{% raw %}
the grain boundary criterion of fast multiscale clustering; MATLAB's gbcFMC

## Syntax

The default parameters:

```python
crit = gbcFMC()
```

More grains, a tighter outlier radius:

```python
crit = gbcFMC(3.8, quatmax=5*degree)
```

As the criterion of calcGrains:

```python
grains = calcGrains(ebsd, criterion=gbcFMC(3.8, minPixel=5))
```

The same by the keyword of calcGrains:

```python
grains = calcGrains(ebsd, fmc=3.8)
```

Fast multiscale clustering (McMahon et al.) is an algebraic multigrid coarsening of the
graph of neighbouring pixels: it builds a hierarchy of nested aggregates, each with its
mean orientation and orientation spread, and reads every pixel off at the scale where its
aggregate stands out most. There is no threshold angle: the coupling of two aggregates is
measured against their own spread, after what the lattice gradient of each explains, so a
small misorientation separates two uniform aggregates and does not separate the parts of a
deformed grain. Each indexed phase is clustered on its own; a pair of pixels of two phases
is always a boundary.

## Output

| | |
|---|---|
| `crit` | gbcFMC, a grainBoundaryCriterion |

## Keywords

| | default | |
|---|---|---|
| `cmaha` | `3.0` | the sharpness of the rebias of the coarse couplings by the aggregates' spread; larger gives more grains |
| `cmaha0` | `0.05` | the decay of the initial coupling of two pixels per degree of misorientation |
| `quatmax` | `5*degree` | the largest outlier radius of an aggregate, an angle |
| `alpha` | `0.2` | how readily a node becomes a seed of the coarse level: the share of its coupling that must reach the seeds |
| `gammaW` | `10.0` | the edge dilution: a coupling weaker than the average one of both its nodes divided by gammaW is dropped |
| `maxDelta` | `inf` | the misorientation angle above which two pixels are never coupled |
| `minPixel` | `1` | the smallest region left standing; smaller ones join their neighbours |
| `verbose` | `False` | print the hierarchy of every phase |

## References

- C. McMahon, B. Soe, A. Loeb, A. Vemulkar, M. Ferry, L. Bassman, Boundary identification in EBSD data with a generalization of fast multiscale clustering, Ultramicroscopy 133 (2013) 16-25

## See also

[calcGrains](EBSD.calcGrains_py.html), [gbcAngle](gbcAngle_index_py.html), [gbcSoft](gbcSoft_index_py.html), [GrainReconstruction](GrainReconstruction_py.html), [GrainReconstructionAdvanced](GrainReconstructionAdvanced_py.html)

MATLAB's [gbcFMC.gbcFMC](gbcFMC.gbcFMC.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/fmc.py#L38">source</a></font>
{% endraw %}
