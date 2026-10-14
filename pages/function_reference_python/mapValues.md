---
title: 'mapValues'
sidebar: function_reference_sidebar
permalink: mapValues_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the value or the colour of every measurement or grain, and whether it is a value a colour
map turns into colours: what a map plot draws, before it is drawn

## Syntax

<div class="mx-form" markdown="1">

```python
rgb, scalar = mapValues(ebsd, 'phase')
```

Phase colours.

</div>

<div class="mx-form" markdown="1">

```python
v, scalar = mapValues(ebsd, 'mad')
```

A property, scalar is True.

</div>

<div class="mx-form" markdown="1">

```python
rgb, scalar = mapValues(ebsd, None, ipfDirection=xvector) # inverse pole figure colours along x
```

</div>

<div class="mx-form" markdown="1">

```python
rgb, scalar = mapValues(ebsd['Forsterite'], key)
```

Through an orientation colour key.

</div>

<div class="mx-form" markdown="1">

```python
rgb, scalar = mapValues(ebsd, 'mad', at=ind)
```

The measurements ind alone.

</div>

## Description

The colouring asked for is one of:

- None or 'phase': the colours of the phases.
- 'orientation', or an ipfDirection alone: every phase through the inverse pole figure key of
its own frame.
- an orientation per element: through the inverse pole figure key of its phase.
- an orientationColorKey: the phases of its frame through the key, the others by their own
inverse pole figure key for an ipfColorKey, else white.
- the name of a property, or of a value per element the map or the grains compute (area,
perimeter, aspectRatio, ...): values.
- a value or an RGB colour per element.
- one colour, a name or an RGB triple, for all; or faceColor alone.

A site without an orientation is white, a not indexed phase too unless its frame has a
colour of its own.

at= colours only the elements a picture shows, for a large map. Values are returned for all
elements regardless, since the colour range belongs to the whole map; colours are returned
one per entry of at.

## Input

| `x` | EBSD or grain2d |
| `color` | the colouring asked for, as listed above |

## Keywords

| keyword | default | description |
|---|---|---|
| `faceColor` | `None` | one colour for all, when no colouring is asked for |
| `ipfDirection` | `None` | vector3d, the specimen direction of the inverse pole figure colours |
| `at` | `None` | the indices of the elements to colour |

## Output

| `values` | array, the RGB colours (n, 3) or the values (n,) |
| `scalar` | bool, whether values are values a colour map maps, not colours |

## See also

[EBSD.plot](EBSD.plot_py.html), [grain2d.plot](grain2d.plot_py.html), [ipfColors](ipfColors_py.html), [ipfColorKey](ipfColorKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L247">source</a></font>
{% endraw %}
