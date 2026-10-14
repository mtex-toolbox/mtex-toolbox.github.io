---
title: 'symmetry.fundamentalRegionEuler'
sidebar: function_reference_sidebar
permalink: symmetry.fundamentalRegionEuler_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.fundamentalRegionEuler.html
status: Reference
---
{% raw %}
the box in Euler angles that carries every orientation at least once
(fundamentalRegionEuler): the two-folds perpendicular to z halve Phi, and one of the
reflections they make on phi1 or phi2 halves that angle when it folds its turn about zero
fundamentalRegionEuler(cs, ss): MATLAB's name of the Euler plotting box

## Syntax

<div class="mx-form" markdown="1">

```python
maxPhi1, maxPhi, maxPhi2 = fundamentalRegionEuler(cs)
```

With the default specimen frame.

</div>

<div class="mx-form" markdown="1">

```python
maxPhi1, maxPhi, maxPhi2 = fundamentalRegionEuler(cs, ss)
```

With a specimen symmetry.

</div>

## Description

The same as eulerRegion. MATLAB's flag 'complete', the full box, is not taken.

## Input

| `frA` | crystalFrame |
| `frB` | the second frame, by default the default specimen frame |

## Output

| `maxPhi1, maxPhi, maxPhi2` | the upper bounds of the three Bunge Euler angles in radians |

## See also

[eulerRegion](eulerRegion_py.html), [fundamentalRegion](fundamentalRegion_py.html), [fundamentalSector](fundamentalSector_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
fundamentalRegionEuler(frA, frB=None)
```

</div>

## Used on

[EulerAngleSections](EulerAngleSections_py.html), [ODFPlot](ODFPlot_py.html)

MATLAB's [symmetry.fundamentalRegionEuler](symmetry.fundamentalRegionEuler.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L361">source</a></font>
{% endraw %}
