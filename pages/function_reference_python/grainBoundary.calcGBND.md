---
title: 'grainBoundary.calcGBND'
sidebar: function_reference_sidebar
permalink: grainBoundary.calcGBND_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.calcGBND.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the grain boundary normal distribution in the crystal frame, estimated from the traces of
the boundaries in a planar section; with a misorientation the grain boundary character
distribution

## Syntax

<div class="mx-form" markdown="1">

```python
gbnd = calcGBND(gB, ebsd)
```

The normals from the orientations of the pixels.

</div>

<div class="mx-form" markdown="1">

```python
gbnd = calcGBND(gB, grains)
```

The normals from the mean orientations of the grains.

</div>

<div class="mx-form" markdown="1">

```python
gbnd = calcGBND(gB, ebsd, halfwidth=5*degree, nonneg=True)
```

A smaller halfwidth, a nonnegative kernel.

</div>

<div class="mx-form" markdown="1">

```python
gbcd = calcGBND(gB, grains, moriRef)
```

The character distribution of one misorientation.

</div>

<div class="mx-form" markdown="1">

```python
gbcd = calcGBND(gB, grains, moriRef, oneSide=True) # only the first side of a symmetric relation
```

</div>

## Description

A section shows only the trace of every boundary; the boundary plane may be inclined about
it at any angle. The orientations on both sides turn each trace into the crystal frame, and
a kernel over the unknown inclination spreads it to the compatible normals. Summed over all
boundaries, weighted by their lengths, this gives an antipodal density of the normals,
normalised so that a uniform distribution of planes is one.

The boundaries must hold one pair of phases, gB['Magnesium', 'Magnesium'] for instance.
With a map, the orientations of the two pixels of every segment are used, which requires
boundaries that were not resampled: smooth them with smoothBoundary(grains, simplify=False,
refine=False), or pass the grains to use their mean orientations.

With a misorientation moriRef, only the boundaries near it count, weighted by their distance
to it, and the normals are given in the crystal frame of its first side: the grain boundary
character distribution. A relation that is its own inverse, a twin, takes both sides of
every boundary unless oneSide=True.

## Input

| `gB` | grainBoundary, the boundaries of one pair of phases |
| `source` | EBSD, the map the boundaries were computed from, or grain2d, the grains |
| `moriRef` | orientation, the misorientation of the character distribution |

## Keywords

| keyword | default | description |
|---|---|---|
| `halfwidth` | `10*degree` | the halfwidth of the density estimation, of the kernel in the normals, and, with moriRef, how far a misorientation may lie from it |
| `nonneg` | `False` | a nonnegative kernel of the inclination, a Gaussian in the cosine to the trace, instead of the solution of the integral equation, which may ring and be negative |
| `bump` | `False` | a bump kernel of the inclination, constant within the halfwidth |
| `oneSide` | `False` | with a moriRef that is its own inverse, take only the first side of every boundary |

## Output

| `gbnd` | S2FunHarmonic, antipodal, in the crystal frame of the phase, or of the first side of moriRef |

## References

- D.M. Saylor, G.S. Rohrer, Determining crystal habits from observations of planar sections, J. Am. Ceram. Soc. 85 (2002) 2799-2804
- R. Hielscher, R. Kilian, E. Wünsche, Efficient computation of the grain boundary normal distribution from two dimensional EBSD data, not yet published

## See also

[calcGBNDKernel](calcGBNDKernel_py.html), [grain3Boundary.calcGBND](grain3Boundary.calcGBND_py.html), [smoothBoundary](smoothBoundary_py.html), [BoundaryNormalDistribution](BoundaryNormalDistribution_py.html)

MATLAB's [grainBoundary.calcGBND](grainBoundary.calcGBND.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/gbnd.py#L167">source</a></font>
{% endraw %}
