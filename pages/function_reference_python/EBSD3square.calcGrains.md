---
title: 'EBSD3square.calcGrains'
sidebar: function_reference_sidebar
permalink: EBSD3square.calcGrains_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3square.calcGrains.html
status: Reference
---
{% raw %}
the grains of a map, the pixels joined across every boundary the criterion keeps: a
misorientation angle below angle (or threshold), or a grainBoundaryCriterion; minPixel
culls smaller grains. A map of the plane also takes alpha, the bound of its decomposition,
removeQuadruplePoints, mcl and fmc for Markov and fast multiscale clustering; a map of
volumes grainId, the grains its file stored, a map of the plane too. The map is changed: it keeps the
grain ids, the pixels the minPixel cull drops and the notIndexed pixels the grains absorb, so
MATLAB's second output is the map passed; run on ebsd.copy() to keep the map as it was

## Syntax

```python
calcGrains(ebsd, angle=15*degree, threshold=None, criterion=None, minPixel=1, alpha=3.1, removeQuadruplePoints=False, mcl=None, fmc=None, verbose=False, backend=None, grainId=False)
```

```python
grains = calcGrains(ebsd)
grains = calcGrains(ebsd, angle=10*degree, minPixel=5)
grains = calcGrains(ebsd['indexed'], criterion=gbc)
```

## Used on

[CrystalShapes](CrystalShapes_py.html), [OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DReconstruction](Grains3DReconstruction_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDDenoising](EBSDDenoising_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDGrid](EBSDGrid_py.html)

MATLAB's [EBSD3square.calcGrains](EBSD3square.calcGrains.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/calcgrains3d.py#L29">source</a></font>
{% endraw %}
