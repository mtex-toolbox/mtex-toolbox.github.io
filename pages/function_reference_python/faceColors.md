---
title: 'faceColors'
sidebar: function_reference_sidebar
permalink: faceColors_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the colour of every face of every crystal shape, as plot(cS) paints them

## Syntax

<div class="mx-form" markdown="1">

```python
C = faceColors(cS)
```

The colour of the mineral, or LightSkyBlue.

</div>

<div class="mx-form" markdown="1">

```python
C = faceColors(cS, 'red')
```

One colour.

</div>

<div class="mx-form" markdown="1">

```python
C = faceColors(cS, cS.faceArea, colormap='parula')
```

A value per face through a colour map.

</div>

<div class="mx-form" markdown="1">

```python
C = faceColors(cS, colored=True)
```

A colour per form.

</div>

<div class="mx-form" markdown="1">

```python
C = faceColors(cS, colored=ipfHSVKey(cS.CS))
```

The key's colour of every normal.

</div>

## Description

faceColor is one colour, one RGB or RGBA row per face or per shape, or a value per face,
mapped through the colour map from its smallest to its largest value. colored overrides it.

## Input

| `cS` | crystalShape, one or a list of n shapes |

## Keywords

| keyword | default | description |
|---|---|---|
| `faceColor` | `None` | one colour, one per face, one per shape, or a value per face |
| `colored` | `None` | True for a colour per form, or a direction or ipf key colouring the normals |
| `colormap` | `'viridis'` | the colour map of the values per face |

## Output

| `C` | (n, number of faces, 4) array of RGBA colours |

## See also

[crystalShape.plot](crystalShape.plot_py.html), [ipfHSVKey](ipfHSVKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/shapeplot.py#L109">source</a></font>
{% endraw %}
