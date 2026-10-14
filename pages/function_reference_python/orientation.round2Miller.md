---
title: 'orientation.round2Miller'
sidebar: function_reference_sidebar
permalink: orientation.round2Miller_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.round2Miller.html
status: Reference
---
{% raw %}
the lattice planes and directions of low indices an orientation or a misorientation aligns

## Syntax

<div class="mx-form" markdown="1">

```python
hkl, uvw = round2Miller(ori)
```

The plane normal along z and the direction along x.

</div>

<div class="mx-form" markdown="1">

```python
n1, n2, d1, d2 = round2Miller(mori)
```

The parallel planes and directions of two crystals.

</div>

<div class="mx-form" markdown="1">

```python
n1, n2, d1, d2 = round2Miller(mori, penalty=0.01)
```

Smaller indices preferred more.

</div>

<div class="mx-form" markdown="1">

```python
n1, n2, d1, d2 = round2Miller(mori, maxIndex=6)
```

Indices up to 6.

</div>

<div class="mx-form" markdown="1">

```python
n1, n2, d1, d2 = round2Miller(mori, nextFit=2)
```

The second best fit.

</div>

## Description

For an orientation, the plane (hkl) along the specimen z and the direction [uvw] along the
specimen x, each rounded on its own to the nearest low indices, as MATLAB's; the two need
not be perpendicular. penalty and nextFit do not apply.

For a misorientation, the planes n1, n2 and the directions d1, d2, d1 in n1, with
mori * n1 = n2 and mori * d1 = d2 as nearly as indices up to maxIndex allow. Each candidate
scores its misfit angle plus penalty times the size of its indices, and the lowest score
wins. The result displays as a table of the parallel planes and directions with the angle
of the relation to the misorientation; a list of misorientations gives lists.

## Input

| `ori` | orientation, crystal to specimen |
| `mori` | orientation, a misorientation between two crystals |

## Keywords

| keyword | default | description |
|---|---|---|
| `penalty` | `0.002` | the weight of the size of the indices against the misfit angle |
| `maxIndex` | `None` | the largest index, 4 for a misorientation and 12 for an orientation by default |
| `nextFit` | `1` | which fit to return, 1 the best |

## Output

| `hkl, uvw` | Miller, the plane normal and the direction |
| `n1, n2, d1, d2` | Miller, the parallel planes and directions |

## See also

[CSL](CSL_py.html), [orientation.map](orientation.map_py.html), [orientation.KurdjumovSachs](orientation.KurdjumovSachs_py.html), [Miller.round](Miller.round_py.html)

## Used on

[OrientationStandard](OrientationStandard_py.html), [TwinningBoundaries](TwinningBoundaries_py.html), [Twinning](Twinning_py.html)

MATLAB's [orientation.round2Miller](orientation.round2Miller.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/parent2child.py#L598">source</a></font>
{% endraw %}
