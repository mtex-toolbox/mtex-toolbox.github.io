---
title: 'makeSphericalProjection'
sidebar: function_reference_sidebar
permalink: makeSphericalProjection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: makeSphericalProjection.html
status: Reference
---
{% raw %}
the charts a spherical plot is drawn on, the projection of the region its data cover;
MATLAB's makeSphericalProjection

## Syntax

The upper hemisphere of v:

```python
proj = makeSphericalProjection(v, upper=True)
```

A region, equal angle:

```python
proj = makeSphericalProjection(sR, projection='eangle')
```

The whole sphere of axes:

```python
proj = makeSphericalProjection(None, complete=True, antipodal=True)
```

The fundamental sector of a frame:

```python
proj = makeSphericalProjection(cs)
```

The region is what the data cover, unless a sphericalRegion is given: the whole sphere for
directions, the fundamental sector for a frame, and for a function of a frame with
symmetry the sector of its group. A region reaching into both hemispheres takes two
charts, the upper and the lower one; an antipodal region needs the upper one only. The
plain projection shows everything in one chart. The hemispheres are those of the
plotting convention, whose out of screen direction is up.

Where MATLAB returns the projection, Python returns a list of one or two charts.

## Input

| | |
|---|---|
| `v` | vector3d, sphericalRegion, a reference frame, a function on the sphere, or None for the whole sphere |

## Output

| | |
|---|---|
| `proj` | list of sphericalProjection, one chart or the upper and the lower one |

## Keywords

| | default | |
|---|---|---|
| `projection` | `'earea'` | 'earea' (equal area), 'eangle' or 'stereo' (equal angle), 'edist', 'orthographic', 'gnomonic', 'plain', or a sphericalProjection class |
| `upper` | `False` | the upper hemisphere only |
| `lower` | `False` | the lower hemisphere only; with upper both |
| `complete` | `False` | the whole sphere, not the fundamental sector |
| `antipodal` | `None` | treat the directions as axes; by default as v says |
| `how2plot` | `None` | the plottingConvention, or its name such as 'x↑→y'; by default that of the frame |
| `fundamentalRegion` | `False` | restrict to the fundamental sector of the frame of v |
| `symmetric` | `None` | whether the charts draw a function of the symmetry of its frame; by default true for a function of a frame with symmetry, false for directions and regions |

## See also

[sphericalProjection](sphericalProjection_index_py.html), [plotS2Grid](plotS2Grid_py.html), [sphericalRegion](sphericalRegion_index_py.html), [plottingConvention](plottingConvention_index_py.html), [SphericalProjections](SphericalProjections_py.html)

MATLAB's [makeSphericalProjection](makeSphericalProjection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L492">source</a></font>
{% endraw %}
