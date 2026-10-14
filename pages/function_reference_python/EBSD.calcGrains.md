---
title: 'EBSD.calcGrains'
sidebar: function_reference_sidebar
permalink: EBSD.calcGrains_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.calcGrains.html
status: Reference
---
{% raw %}
the grains of a map, the pixels joined across every boundary the criterion keeps; MATLAB's
grain reconstruction from 2d and 3d EBSD data

## Syntax

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd)
```

Grain boundaries above 15 degree.

</div>

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd, angle=10*degree, minPixel=5, alpha=3.7)
```

Another angle, no grains below 5 pixels.

</div>

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd, angle=[10*degree, 2*degree])
```

High and low angle boundaries.

</div>

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd, angle=[[10*degree], [5*degree]])
```

A threshold per indexed phase.

</div>

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd, criterion=gbcAngle(10*degree, byPhase={'Enstatite': 5*degree}))
```

A threshold per phase.

</div>

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd, criterion=gbcSoft(10*degree, 2*degree), mcl=(1.4, 4))
```

A soft threshold and Markov clustering.

</div>

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd, fmc=1.5, minPixel=10)
```

Fast multiscale clustering.

</div>

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd, grainId=True)
```

The grains stored with the map.

</div>

## Description

Two neighbouring pixels belong to one grain when the misorientation between them stays
below the threshold angle, and a grain is a connected set of such pixels. With a pair
[high, low] the boundaries above high separate the grains, and those between low and high
are kept as low angle boundaries inside them, grains.innerBoundary: the subgrain boundaries.
A list of other than two numbers, or of lists, gives every phase a threshold or a pair of its
own: one entry per indexed phase, or one per entry of ebsd.CSList as MATLAB's cell
{a1, a2, a3}; two numbers are always the pair [high, low], as MATLAB's [a1 a2], so two
phases take [[a1], [a2]]. A soft threshold or any other rule is a grainBoundaryCriterion.

The map is divided into cells around its pixels, a Voronoi decomposition bounded by alpha:
a not indexed region narrower than 2 alpha pixel spacings is filled by the grains around
it, a wider one becomes a notIndexed grain.

The map is changed: it keeps the grain ids, the pixels the minPixel cull drops and the
notIndexed pixels the grains absorb, so MATLAB's second output is the map passed; run on
ebsd.copy() to keep the map as it was.

## Input

| `ebsd` | EBSD, a map of the plane, or EBSD3, a map of volumes |

## Keywords

| keyword | default | description |
|---|---|---|
| `angle` | `15*degree` | the misorientation angle above which neighbouring pixels belong to different grains; a pair [high, low] also keeps the low angle boundaries between low and high as grains.innerBoundary; a list of an angle or a pair per phase gives every phase its own |
| `threshold` | `None` | the same as angle, which it replaces when given |
| `criterion` | `None` | a grainBoundaryCriterion instead of the angle: gbcAngle with thresholds per phase, gbcSoft for a soft threshold, gbcEqual for a property that must agree, gbcCustom for a rule of your own, gbcFMC with every parameter of fast multiscale clustering |
| `minPixel` | `1` | the smallest number of pixels of a grain; the pixels of an indexed grain that would be smaller are marked notIndexed and the grains reconstructed again |
| `alpha` | `3.1` | the bound of the decomposition in pixel spacings: a not indexed region narrower than 2 alpha is filled (map of the plane) |
| `removeQuadruplePoints` | `False` | split every point where four pixels of a square grid meet into two triple points, joining the diagonal pair the criterion connects more (map of the plane) |
| `mcl` | `None` | (p, maxIter), Markov clustering of the links between the pixels before the grains are formed, the inflation power p (1.4 in MATLAB) and the number of iterations (4); with a soft criterion it merges grains a hard threshold would split (map of the plane) |
| `fmc` | `None` | fast multiscale clustering with the sharpness cmaha, larger giving more grains; gbcFMC as the criterion takes its other parameters (map of the plane) |
| `verbose` | `False` | report the cluster hierarchy of fast multiscale clustering |
| `backend` | `None` | 'numba' or 'numpy', the loops of the decomposition and the segmentation; by default the preference 'kernels' (map of the plane) |
| `grainId` | `False` | join the pixels of one grain id stored with the map, ebsd.prop['grainId'] or the voxels' ebsd.grainId, instead of a criterion on the orientations |

## Output

| `grains` | grain2d, or grain3d for a map of volumes; ebsd.grainId numbers the grain of every pixel |

## References

- F. Bachmann, R. Hielscher, H. Schaeben, Grain detection from 2d and 3d EBSD data - Specification of the MTEX algorithm, Ultramicroscopy 111 (2011) 1720-1733
- C. McMahon, B. Soe, A. Loeb, A. Vemulkar, M. Ferry, L. Bassman, Boundary identification in EBSD data with a generalization of fast multiscale clustering, Ultramicroscopy 133 (2013) 16-25

## See also

[GrainReconstruction](GrainReconstruction_py.html), [GrainReconstructionAdvanced](GrainReconstructionAdvanced_py.html), [GrainReconstructionMCL](GrainReconstructionMCL_py.html), [gbcAngle](gbcAngle_index_py.html), [grain2d.merge](grain2d.merge_py.html), [smoothBoundary](smoothBoundary_py.html)

## Used on

[CrystalShapes](CrystalShapes_py.html), [OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DReconstruction](Grains3DReconstruction_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [EBSD2ODF](EBSD2ODF_py.html), [EBSDDenoising](EBSDDenoising_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDGrid](EBSDGrid_py.html)

MATLAB's [EBSD.calcGrains](EBSD.calcGrains.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/calcgrains3d.py#L29">source</a></font>
{% endraw %}
