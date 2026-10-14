---
title: 'planarColorKey.property2color'
sidebar: function_reference_sidebar
permalink: planarColorKey.property2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [planarColorKey](planarColorKey_index_py.html).

convert paired property values to RGB colours

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = key.property2color(v1, v2)
```

</div>

## Description

The first property selects a colour and the second sets its blend with white or black.
Values are clipped to the key's ranges, or wrapped for a periodic first property. Ranges
not explicitly set on the key are inferred from these values, with quantileCap limiting
the second property's upper end.

## Input

| `v1` | numeric first-property values |
| `v2` | numeric second-property values, with the same number of elements as v1 |

## Output

| `rgb` | array of shape (v1.size, 3), with RGB channels in [0, 1]; inputs are flattened |

## See also

[planarColorKey](planarColorKey_index_py.html), [planarColorKey.plot](planarColorKey.plot_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
planarColorKey.property2color(self, v1, v2)
```

</div>

## Used on

[GrainSpatialPlots](GrainSpatialPlots_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/planarkey.py#L88">source</a></font>
{% endraw %}
