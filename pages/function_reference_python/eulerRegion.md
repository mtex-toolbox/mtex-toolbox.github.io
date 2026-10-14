---
title: 'eulerRegion'
sidebar: function_reference_sidebar
permalink: eulerRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the ranges (phi1, Phi, phi2) of the Bunge Euler angles covering the fundamental region of
two frames, the specimen frame the default second

## Syntax

<div class="mx-form" markdown="1">

```python
maxPhi1, maxPhi, maxPhi2 = eulerRegion(cs)
```

With the default specimen frame.

</div>

<div class="mx-form" markdown="1">

```python
maxPhi1, maxPhi, maxPhi2 = eulerRegion(cs, ss) # with a specimen symmetry, or a second crystal
```

</div>

## Description

The rotations about z of the two groups divide phi1 and phi2, the two-folds perpendicular
to z halve Phi, and one of the reflections they make on phi1 or phi2 halves that angle.

## Input

| `frA` | crystalFrame |
| `frB` | the second frame, by default the default specimen frame |

## Output

| `maxPhi1, maxPhi, maxPhi2` | the upper bounds of the three Bunge Euler angles in radians |

## See also

[fundamentalRegionEuler](symmetry.fundamentalRegionEuler_py.html), [fundamentalRegion](fundamentalRegion_py.html), [projectIntoEulerRegion](quaternion.project2EulerFR_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
eulerRegion(frA, frB=None)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L408">source</a></font>
{% endraw %}
