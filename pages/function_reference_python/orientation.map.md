---
title: 'orientation.map'
sidebar: function_reference_sidebar
permalink: orientation.map_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.map.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientation that maps one or two pairs of directions; MATLAB's orientation.map

## Syntax

<div class="mx-form" markdown="1">

```python
ori = orientation.map(h1, r1)
```

The smallest rotation taking h1 to r1.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.map(h1, r1, h2, r2)
```

H1 to r1 and h2 to r2.

</div>

<div class="mx-form" markdown="1">

```python
mori = orientation.map(nAlpha, nBeta, dAlpha, dBeta)
```

Parallel planes and directions of two phases.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.map(h1, r1, cs, ss)
```

Between the frames named.

</div>

## Description

With two pairs the angle between h1 and h2 has to be the one between r1 and r2, within
1e-3, and the two must not be colinear; otherwise the pairs are refused. The frames of framed inputs are
adopted, CS from h1 and SS from r1, unless frames are named.

## Input

| `u1, v1` | vector3d or Miller, the first pair |
| `args` | u2, v2, the second pair, then the frames |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | mark a misorientation with grain exchange |

## Output

| `ori` | orientation |

## See also

[orientation.fit](orientation.fit_py.html), [orientation.byMiller](orientation.byMiller_py.html), [orientation.byAxisAngle](orientation.byAxisAngle_py.html)

MATLAB's [orientation.map](orientation.map.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L295">source</a></font>
{% endraw %}
