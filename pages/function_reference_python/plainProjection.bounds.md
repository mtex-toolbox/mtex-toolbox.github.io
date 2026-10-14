---
title: 'plainProjection.bounds'
sidebar: function_reference_sidebar
permalink: plainProjection.bounds_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [plainProjection](plainProjection_index_py.html).

the azimuth and polar ranges of the region in degrees, widened by the margin

## Syntax

Tight:

```python
rhoMin, rhoMax, thetaMin, thetaMax = plainProjection(sR).bounds()
```

Widened:

```python
rhoMin, rhoMax, thetaMin, thetaMax = plainProjection(sR).bounds(margin=0.1)
```

## Output

| | |
|---|---|
| `rhoMin, rhoMax, thetaMin, thetaMax` | floats in degree |

## Keywords

| | default | |
|---|---|---|
| `margin` | `0.0` | the widening on every side, a fraction of the shorter of the two ranges |

## See also

[sphericalProjection.bounds](sphericalProjection.bounds_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L435">source</a></font>
{% endraw %}
