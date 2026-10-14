---
title: 'The class gbcFMC'
sidebar: function_reference_sidebar
permalink: gbcFMC_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
gbcFMC(cmaha=3, cmaha0=0.05, quatmax=5 * degree, alpha=0.2, gammaW=10, maxDelta=inf, minPixel=1, verbose=False)

cmaha the sharpness of the coarse rebias, larger giving more grains; cmaha0 the decay of
the initial edge weight per degree of misorientation; quatmax the ceiling of the outlier
radius; alpha the seed aggressiveness; gammaW the inverse edge dilution; maxDelta the
misorientation above which an edge is cut; minPixel the smallest region left standing;
verbose prints the hierarchy of every phase.

## Members

| | |
|---|---|
| [clusterPhase](gbcFMC.clusterPhase_py.html) | FMC on the pixels isP of one phase over the pair list (ip, jp) within them |
| [evaluate](gbcFMC.evaluate_py.html) | 1 for every pair of pixels i, j that FMC puts into one cluster, 0 otherwise, each indexed phase clustered on its own |
| [gbcFMC](gbcFMC.gbcFMC_py.html) | gbcFMC(cmaha=3, cmaha0=0.05, quatmax=5 * degree, alpha=0.2, gammaW=10, maxDelta=inf, minPixel=1, verbose=False) |
| [setMinPixel](gbcFMC.setMinPixel_py.html) | the same criterion with another smallest region left standing |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/fmc.py#L38">source</a></font>
{% endraw %}
