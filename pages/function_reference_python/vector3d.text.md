---
title: 'vector3d.text'
sidebar: function_reference_sidebar
permalink: vector3d.text_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.text.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

text at directions on the sphere, at the measurements or grains of a map, or at a point
of the current axes; MATLAB's vector3d.text, EBSD.text and grain2d.text

## Syntax

A label at every direction:

```python
text(v, ['a', 'b', 'c'])
```

A crystal direction named by its indices:

```python
text(Miller(1, 0, 0, cs), labeled=True)
```

One text at measurements of the map:

```python
plot(ebsd); text(ebsd[0:3], 'A')
```

The grain ids at the centroids:

```python
plot(grains); text(grains, grains.id)
```

Styled:

```python
text(grains, labels, fontSize=8, color='r')
```

At a point of the current axes:

```python
text(0.5, 0.5, 'here')
```

At a point of 3D axes:

```python
text(x, y, z, 'here')
```

On the sphere the text sits at its direction with no marker, in every chart of the current
figure unless nextAxis chose one of a held figure; the keywords of scatter style it
(labelFontSize, textAboveMarker, backgroundColor, ...). On a map the text is centred at
every measurement or grain centroid of the current map plot, or of a new one; fontSize and
color style it. With coordinates the text goes to the current axes, with matplotlib's text
properties in MATLAB's spelling (fontSize, fontWeight, horizontalAlignment, ...).

## Input

| | |
|---|---|
| `v` | vector3d or Miller; EBSD or grain2d; or the coordinates x, y (, z) |
| `labels` | a string per direction, measurement or grain, or one for all; with coordinates the string |

## Output

| | |
|---|---|
| `h` | the matplotlib collections, one per spherical plot, or the texts |

## See also

[scatter](quaternion.scatter_py.html), [annotate](annotate_py.html), [plot](S1Grid.plot_py.html)

## Signature

```python
vector3d.text(v, labels=None, *more, **kw)
```

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html)

MATLAB's [vector3d.text](vector3d.text.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L996">source</a></font>
{% endraw %}
