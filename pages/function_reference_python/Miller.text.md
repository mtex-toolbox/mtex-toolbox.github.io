---
title: 'Miller.text'
sidebar: function_reference_sidebar
permalink: Miller.text_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.text.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

text at directions on the sphere, at the measurements or grains of a map, or at a point
of the current axes; MATLAB's vector3d.text, EBSD.text and grain2d.text

## Syntax

<div class="mx-form" markdown="1">

```python
text(v, ['a', 'b', 'c'])
```

A label at every direction.

</div>

<div class="mx-form" markdown="1">

```python
text(Miller(1, 0, 0, cs), labeled=True)
```

A crystal direction named by its indices.

</div>

<div class="mx-form" markdown="1">

```python
plot(ebsd); text(ebsd[0:3], 'A')
```

One text at measurements of the map.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains); text(grains, grains.id)
```

The grain ids at the centroids.

</div>

<div class="mx-form" markdown="1">

```python
text(grains, labels, fontSize=8, color='r')
```

Styled.

</div>

<div class="mx-form" markdown="1">

```python
text(0.5, 0.5, 'here')
```

At a point of the current axes.

</div>

<div class="mx-form" markdown="1">

```python
text(x, y, z, 'here')
```

At a point of 3D axes.

</div>

## Description

On the sphere the text sits at its direction with no marker, in every chart of the current
figure unless nextAxis chose one of a held figure; the keywords of scatter style it
(labelFontSize, textAboveMarker, backgroundColor, ...). On a map the text is centred at
every measurement or grain centroid of the current map plot, or of a new one; fontSize and
color style it. With coordinates the text goes to the current axes, with matplotlib's text
properties in MATLAB's spelling (fontSize, fontWeight, horizontalAlignment, ...).

## Input

| `v` | vector3d or Miller; EBSD or grain2d; or the coordinates x, y (, z) |
| `labels` | a string per direction, measurement or grain, or one for all; with coordinates the string |

## Output

| `h` | the matplotlib collections, one per spherical plot, or the texts |

## See also

[scatter](quaternion.scatter_py.html), [annotate](annotate_py.html), [plot](S1Grid.plot_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.text(v, labels=None, *more, **kw)
```

</div>

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html)

MATLAB's [Miller.text](Miller.text.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L996">source</a></font>
{% endraw %}
