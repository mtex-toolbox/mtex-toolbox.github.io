---
title: 'vector3d.scatter'
sidebar: function_reference_sidebar
permalink: vector3d.scatter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.scatter.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

directions or crystal directions drawn as markers on a spherical plot, coloured by data
or labelled

## Syntax

<div class="mx-form" markdown="1">

```python
scatter(v)
```

The directions as markers.

</div>

<div class="mx-form" markdown="1">

```python
scatter(v, data, colorbar=True)
```

Coloured by values, with a colour bar.

</div>

<div class="mx-form" markdown="1">

```python
scatter(v, rgb)
```

An RGB colour per direction.

</div>

<div class="mx-form" markdown="1">

```python
scatter(v, label=texts)
```

A text below every marker.

</div>

<div class="mx-form" markdown="1">

```python
scatter(v, label=texts, textAboveMarker=True)
```

The text above.

</div>

<div class="mx-form" markdown="1">

```python
scatter(v, numbered=True)
```

Every direction labelled 1, 2, ..., n.

</div>

<div class="mx-form" markdown="1">

```python
scatter(h, symmetrised=True, labeled=True)
```

Every equivalent, named by its indices.

</div>

<div class="mx-form" markdown="1">

```python
scatter(v, marker='s', markerSize=8, markerFaceColor='r', markerEdgeColor='k')
```

The markers styled.

</div>

<div class="mx-form" markdown="1">

```python
scatter(v, data, minmax=True)
```

The smallest and largest value marked.

</div>

<div class="mx-form" markdown="1">

```python
scatter(ori)
```

Orientations in axis angle space.

</div>

<div class="mx-form" markdown="1">

```python
scatter(x, y, 50, 'r')
```

Points of two coordinate lists on the current map.

</div>

## Description

The plot is new, or the one held; its projection, hemisphere and region follow the frame
and the keywords of the spherical plots (upper, lower, fundamentalRegion, ...). A Miller
direction or plane with symmetrised=True is drawn at all its distinct symmetric equivalents.
Orientations go to scatter3d's axis angle space, two lists of coordinates to the map
held.

## Input

| `v` | vector3d or Miller |
| `data` | one value per direction, or an (n, 3) array of RGB colours |
| `ori` | orientation |
| `x, y` | the coordinates of points on a map |

## Keywords

| keyword | default | description |
|---|---|---|
| `minmax` | `False` | mark the smallest and the largest value |
| `symmetrised` | `False` | draw every distinct symmetric equivalent of a crystal direction |
| `colorbar` | `False` | add a colour bar for the data |
| `numbered` | `False` | label the directions by their number, 1 to n, in their order |

## Output

| `h` | the matplotlib collections, one per spherical plot |

## See also

[plot](S1Grid.plot_py.html), [text](EBSD.text_py.html), [circle](vector3d.circle_py.html), [plotPF](SO3Fun.plotPDF_py.html), [plotIPF](SO3Fun.plotIPDF_py.html), [vector3d.scatter3d](vector3d.scatter3d_py.html), [SphericalProjections](SphericalProjections_py.html)

MATLAB's [vector3d.scatter](vector3d.scatter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L910">source</a></font>
{% endraw %}
