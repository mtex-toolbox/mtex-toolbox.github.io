---
title: 'The class BungeColorKey'
sidebar: function_reference_sidebar
permalink: BungeColorKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: BungeColorKey.html
status: Reference
---
{% raw %}
colour orientations by their three Bunge Euler angles

## Syntax

<div class="mx-form" markdown="1">

```python
key = BungeColorKey(cs, ss)
rgb = key.orientation2color(ori)
```

</div>

## Description

A symmetry-equivalent representative is selected within the Euler plotting box. Its phi1,
Phi and phi2 angles are divided by the box limits and assigned to red, green and blue.
RGB values lie in [0, 1]. Colour discontinuities can occur where the chosen symmetry
representative changes or an Euler angle wraps.

## Input

| `x` | crystalFrame, orientation, or single-phase EBSD or grain data supplying the frames |
| `frameB` | specimenFrame when supplied separately |

## Output

| `key` | BungeColorKey |

## Properties

| `phi1Range` | upper limit of the first Euler angle, in radians |
| `PhiRange` | upper limit of the second Euler angle, in radians |
| `phi2Range` | upper limit of the third Euler angle, in radians |

## See also

[ipfHSVKey](ipfHSVKey_index_py.html), [axisAngleColorKey](axisAngleColorKey_index_py.html)

## Members

| [orientation2color](BungeColorKey.orientation2color_py.html) | the colours of orientations, the Euler angles of the symmetric equivalent inside the Euler box scaled to red, green and blue |

## Used on

[EBSDAdvancedMaps](EBSDAdvancedMaps_py.html)

MATLAB's [BungeColorKey](BungeColorKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L443">source</a></font>
{% endraw %}
