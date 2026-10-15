---
title: 'ipfColors'
sidebar: function_reference_sidebar
permalink: ipfColors_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the colour of every measurement of a map, or of every grain, each phase by its own inverse
pole figure key

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = ipfColors(ebsd)
```

Colours along the z direction.

</div>

<div class="mx-form" markdown="1">

```python
rgb = ipfColors(grains, ipfDirection=xvector)
```

Colours of grains along x.

</div>

<div class="mx-form" markdown="1">

```python
rgb = ipfColors(ebsd, unindexed=(0, 0, 0))
```

Black where nothing is indexed.

</div>

<div class="mx-form" markdown="1">

```python
rgb = ipfColors(ebsd, exact=True)
```

Through the key itself, no colour grid.

</div>

<div class="mx-form" markdown="1">

```python
rgb = ipfColors(ebsd, at=ind)
```

The measurements ind alone.

</div>

## Description

Every indexed phase is coloured by the HSV inverse pole figure key (ipfHSVKey) of its own
crystal frame: the specimen direction ipfDirection is taken into crystal coordinates,
folded into the fundamental sector, and coloured by its place there. What is not indexed
takes the colour unindexed. By default the colours are read off a grid of the key, one
compiled loop over the quaternions where numba is installed, which is many times faster on
a large map than colouring every direction through the key; exact=True does the latter.

## Input

| `x` | EBSD or grain2d, a map or its grains |

## Keywords

| keyword | default | description |
|---|---|---|
| `ipfDirection` | `None` | vector3d, the specimen direction of the inverse pole figure, zvector by default |
| `unindexed` | `(1.0, 1.0, 1.0)` | the RGB colour of the measurements not indexed |
| `exact` | `False` | colour every measurement through the key instead of the colour grid |
| `resolution` | `0.5*degree` | the spacing of the colour grid, in radians |
| `at` | `None` | the indices of the measurements to colour, the others left out |

## Output

| `rgb` | array of shape x.shape + (3,), or (len(at), 3), RGB values in [0, 1] |

## See also

[ipfHSVKey](ipfHSVKey_index_py.html), [ipfColorKey](ipfColorKey_index_py.html), [orientation2color](BungeColorKey.orientation2color_py.html), [EBSD.plot](EBSD.plot_py.html), [colorGrid](colorGrid_index_py.html), [EBSDIPFMap](EBSDIPFMap_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys/__init__.py#L656">source</a></font>
{% endraw %}
