---
title: 'ipfColorKey.orientation2color'
sidebar: function_reference_sidebar
permalink: ipfColorKey.orientation2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [ipfColorKey](ipfColorKey_index_py.html).

convert orientations to inverse pole figure RGB colours

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = key.orientation2color(ori)
rgb = key.orientation2color(ebsd['Fo'].orientations)
```

</div>

## Description

Each orientation supplies the crystal direction parallel to key.ipfDirection. The key's
direction map assigns its colour. A missing orientation gives NaN in all three channels.
Large orientation arrays use a cached colour grid; precompute can build that grid explicitly.

## Input

| `ori` | orientation array compatible with the crystal and specimen frames of the key |

## Output

| `rgb` | numeric array of shape ori.shape + (3,), with channels in [0, 1] or NaN |

## See also

[ipfColorKey.crystalDirection](ipfColorKey.crystalDirection_py.html), [ipfColorKey.precompute](ipfColorKey.precompute_py.html), [plot](S1Grid.plot_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
ipfColorKey.orientation2color(self, ori)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L151">source</a></font>
{% endraw %}
