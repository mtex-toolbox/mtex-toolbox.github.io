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

The part with z <= 0:

```python
sR = sR.restrictToLower()
```

The part away from x:

```python
sR = sR.restrictToLower(xvector)
```

## Input

| | |
|---|---|
| `sR` | sphericalRegion |
| `up` | vector3d, z by default |

## Output

| | |
|---|---|
| `sR` | sphericalRegion |

## See also

[sphericalRegion.restrictToUpper](sphericalRegion.restrict2Upper_py.html)

## Signature

```python
sphericalRegion.restrict2Lower(self, up=None)
```

MATLAB's [sphericalRegion.restrict2Lower](sphericalRegion.restrict2Lower.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L213">source</a></font>
{% endraw %}
