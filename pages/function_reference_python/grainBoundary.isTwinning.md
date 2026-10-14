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

<div class="mx-form" markdown="1">

```python
ind = gB.isTwinning(mori)
```

Within 5 degrees of the misorientation.

</div>

<div class="mx-form" markdown="1">

```python
ind = gB.isTwinning(mori, 2*degree)
```

Within 2 degrees.

</div>

<div class="mx-form" markdown="1">

```python
ind = gB.isTwinning(CSL(3, ebsd['Iron'].CS))
```

The Sigma 3 boundaries of a cubic phase.

</div>

## Description

Only the segments between the two phases of the misorientation, its frames, are compared;
a segment with them the other way round is compared with the inverse. The angle is the
symmetry reduced misorientation angle.

## Input

| `gB` | grainBoundary |
| `mori` | the misorientation, an orientation between two crystal frames |

## Keywords

| keyword | default | description |
|---|---|---|
| `threshold` | `5*degree` | the largest misorientation angle to mori |

## Output

| `ind` | a boolean per segment |

## See also

[CSL](CSL_py.html), [grainBoundary.hasPhase](grainBoundary.hasPhase_py.html)

## Used on

[BoundaryProperties](BoundaryProperties_py.html), [CSLBoundaries](CSLBoundaries_py.html)

MATLAB's [grainBoundary.isTwinning](grainBoundary.isTwinning.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L475">source</a></font>
{% endraw %}
