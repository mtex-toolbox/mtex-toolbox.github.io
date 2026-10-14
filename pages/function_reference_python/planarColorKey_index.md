---
title: 'The class planarColorKey'
sidebar: function_reference_sidebar
permalink: planarColorKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
encode two scalar properties in one RGB colour

## Syntax

<div class="mx-form" markdown="1">

```python
key = planarColorKey('twilight')
rgb = key.property2color(angleValues, magnitudeValues)
key.plot(angleValues, magnitudeValues)
```

</div>

## Description

The first property selects a colour from the colour map. The second blends it from white
or black to full colour, making it suitable for displaying an angle together with a magnitude.
A finite periode wraps the first property cyclically. Otherwise its range is scaled linearly.
Explicit ranges keep colours comparable between data sets; inferred ranges depend on the data.

## Keywords

| keyword | default | description |
|---|---|---|
| `colorMap` |  | matplotlib colour-map name, or an array of RGB rows |
| `satRange` |  | pair of blend factors at the low and high ends of the second property |
| `shading` |  | 'white' to fade towards white, otherwise fade towards black |
| `periode` |  | period of the first property in radians, or NaN for nonperiodic data; angular values exceeding 2*pi are interpreted as degrees |
| `quantileCap` |  | quantile used for an inferred upper limit of the second property |
| `range1` |  | minimum and maximum of the first property; NaN entries are inferred |
| `range2` |  | minimum and maximum of the second property; NaN entries are inferred |
| `label1` |  | label for the first property |
| `label2` |  | label for the second property |

## Output

| `key` | planarColorKey |

## See also

[planarColorKey.property2color](planarColorKey.property2color_py.html), [planarColorKey.plot](planarColorKey.plot_py.html)

## Members

| [plot](planarColorKey.plot_py.html) | the colour key drawn as an image, hue along x and saturation along y |
| [property2color](planarColorKey.property2color_py.html) | convert paired property values to RGB colours |

## Used on

[GrainSpatialPlots](GrainSpatialPlots_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/planarkey.py#L28">source</a></font>
{% endraw %}
