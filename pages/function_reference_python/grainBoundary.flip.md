---
title: 'grainBoundary.flip'
sidebar: function_reference_sidebar
permalink: grainBoundary.flip_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.flip.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

swap the two sides of the segments marked, or of all of them, and walk the chains again;
MATLAB's grainBoundary.flip

## Syntax

<div class="mx-form" markdown="1">

```python
gB = gB.flip()
```

Every segment.

</div>

<div class="mx-form" markdown="1">

```python
gB = gB.flip(gB.grainId[:, 1] == grains[k].id)
```

The grain k on the first side throughout.

</div>

## Description

The two grains, pixels and phases of a segment swap and its misorientation inverts; the
segment is walked the other way, so the grain in grainId[:, 0] stays on its left.

## Input

| `gB` | grainBoundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `ind` | `None` | the segments to flip, booleans or indices; all of them when not given |

## Output

| `gB` | grainBoundary |

## See also

[grainBoundary.curvature](grainBoundary.curvature_py.html), [grainBoundary.hasPhase](grainBoundary.hasPhase_py.html)

MATLAB's [grainBoundary.flip](grainBoundary.flip.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L416">source</a></font>
{% endraw %}
