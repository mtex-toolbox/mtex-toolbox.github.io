---
title: 'orientation.fibreVolume'
sidebar: function_reference_sidebar
permalink: orientation.fibreVolume_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.fibreVolume.html
status: Reference
---
{% raw %}
the volume of a fibre: the share of an orientation density within a radius of the fibre
of the orientations that map the crystal direction h onto the specimen direction r

## Syntax

The volume within radius of the fibre h || r:

```python
v = fibreVolume(odf, h, r, radius)
```

The fibre given as a fibre:

```python
v = fibreVolume(odf, fibre(h, r), radius)
```

A coarser quadrature:

```python
v = fibreVolume(odf, h, r, radius, resolution=2*degree)
```

The function is averaged over the tube about the fibre, the orientations g with g h within
the radius of r: the directions u on the cap of the radius about r, and for each the turns
about u equispaced. The mean times the tube's share of orientation space, over the
symmetrically equivalent copies of h, is the volume, at most one; for the uniform density it
is (1 - cos radius) / 2 times the number of the copies.

## Input

| | |
|---|---|
| `f` | SO3Fun, an orientation density |
| `h` | Miller, the crystal direction, or a fibre, whose h and r are taken |
| `r` | vector3d, the specimen direction; with a fibre the radius |
| `radius` | the angle of the tube about the fibre in radians |

## Output

| | |
|---|---|
| `v` | float, the volume between 0 and 1 |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `None` | the spacing of the quadrature of the tube; by default the smaller of one degree and a thirtieth of the radius |

## See also

[SO3Fun.volume](SO3Fun.volume_py.html), [SO3Fun.entropy](SO3Fun.entropy_py.html), [fibre](fibre_index_py.html), [ODFCharacteristics](ODFCharacteristics_py.html)

MATLAB's [orientation.fibreVolume](orientation.fibreVolume.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L164">source</a></font>
{% endraw %}
