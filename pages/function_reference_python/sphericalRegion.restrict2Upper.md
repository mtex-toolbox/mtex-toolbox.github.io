---
title: 'sphericalRegion.restrict2Upper'
sidebar: function_reference_sidebar
permalink: sphericalRegion.restrict2Upper_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.restrict2Upper.html
status: Reference
---
{% raw %}
A method of [sphericalRegion](sphericalRegion_index_py.html).

the hemisphere seen from a direction added to the region (MATLAB's sphericalRegion.restrict2Upper)

## Syntax

<div class="mx-form" markdown="1">

```python
sR = sR.restrictToUpper()
```

The part with z >= 0.

</div>

<div class="mx-form" markdown="1">

```python
sR = sR.restrictToUpper(xvector)
```

The part towards x.

</div>

<div class="mx-form" markdown="1">

```python
sR = sR.restrictToUpper(plottingConvention('y↑→x'))
```

Towards the viewer of a convention.

</div>

## Description

The region is returned as it is when it already lies in that hemisphere.

## Input

| `sR` | sphericalRegion |
| `up` | vector3d, or a plottingConvention whose outOfScreen direction is taken; z by default |

## Output

| `sR` | sphericalRegion |

## See also

[sphericalRegion.restrictToLower](sphericalRegion.restrict2Lower_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
sphericalRegion.restrict2Upper(self, up=None)
```

</div>

MATLAB's [sphericalRegion.restrict2Upper](sphericalRegion.restrict2Upper.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L189">source</a></font>
{% endraw %}
