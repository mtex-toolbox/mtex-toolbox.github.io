---
title: 'grainBoundary.isTwinning'
sidebar: function_reference_sidebar
permalink: grainBoundary.isTwinning_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.isTwinning.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the segments whose misorientation is the given one up to a threshold; MATLAB's
grainBoundary.isTwinning

## Syntax

Within 5 degrees of the misorientation:

```python
ind = gB.isTwinning(mori)
```

Within 2 degrees:

```python
ind = gB.isTwinning(mori, 2*degree)
```

The Sigma 3 boundaries of a cubic phase:

```python
ind = gB.isTwinning(CSL(3, ebsd['Iron'].CS))
```

Only the segments between the two phases of the misorientation, its frames, are compared;
a segment with them the other way round is compared with the inverse. The angle is the
symmetry reduced misorientation angle.

## Input

| | |
|---|---|
| `gB` | grainBoundary |
| `mori` | the misorientation, an orientation between two crystal frames |

## Output

| | |
|---|---|
| `ind` | a boolean per segment |

## Keywords

| | default | |
|---|---|---|
| `threshold` | `5*degree` | the largest misorientation angle to mori |

## See also

[CSL](CSL_py.html), [grainBoundary.hasPhase](grainBoundary.hasPhase_py.html)

## Used on

[BoundaryProperties](BoundaryProperties_py.html), [CSLBoundaries](CSLBoundaries_py.html)

MATLAB's [grainBoundary.isTwinning](grainBoundary.isTwinning.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L430">source</a></font>
{% endraw %}
