---
title: 'sphericalRegion.restrict2Lower'
sidebar: function_reference_sidebar
permalink: sphericalRegion.restrict2Lower_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.restrict2Lower.html
status: Reference
---
{% raw %}
A method of [sphericalRegion](sphericalRegion_index_py.html).

the hemisphere opposite to a direction, z by default, added to the region
(MATLAB's sphericalRegion.restrict2Lower)

## Syntax

<div class="mx-form" markdown="1">

```python
sR = sR.restrictToLower()
```

The part with z <= 0.

</div>

<div class="mx-form" markdown="1">

```python
sR = sR.restrictToLower(xvector)
```

The part away from x.

</div>

## Input

| `sR` | sphericalRegion |
| `up` | vector3d, z by default |

## Output

| `sR` | sphericalRegion |

## See also

[sphericalRegion.restrictToUpper](sphericalRegion.restrict2Upper_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
sphericalRegion.restrict2Lower(self, up=None)
```

</div>

MATLAB's [sphericalRegion.restrict2Lower](sphericalRegion.restrict2Lower.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L213">source</a></font>
{% endraw %}
