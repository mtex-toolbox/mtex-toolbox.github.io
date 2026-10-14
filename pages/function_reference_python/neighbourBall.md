---
title: 'neighbourBall'
sidebar: function_reference_sidebar
permalink: neighbourBall_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the offsets of the lattice reachable in that many steps over its stencil, or within a
physical distance over as many steps as it takes to reach it; the neighbourhood KAM and the
denoising filters average over

## Syntax

The nearest neighbours, the stencil:

```python
offs = neighbourBall(ebsd.lattice, 1)
```

The neighbours up to the second order:

```python
offs = neighbourBall(ebsd.lattice, 2)
```

```python
offs = neighbourBall(ebsd.lattice, radius=0.7) # the neighbours within 0.7 scan units
```

The offsets are integer steps (i, j) along the two lattice directions, the pixel itself
left out, sorted. With a radius the walk goes as many steps as the shortest step of the
stencil needs to reach it, and keeps the offsets whose physical length is at most radius.

## Input

| | |
|---|---|
| `l` | lattice, ebsd.lattice |

## Output

| | |
|---|---|
| `offs` | (n, 2) int array of the offsets |

## Keywords

| | default | |
|---|---|---|
| `order` | `None` | the number of steps over the stencil |
| `radius` | `None` | the largest physical distance, in the scan unit, which replaces order |

## See also

[KAM](KAM_py.html), [lattice](lattice_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L124">source</a></font>
{% endraw %}
