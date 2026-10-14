---
title: 'grain2d.findByOrientation'
sidebar: function_reference_sidebar
permalink: grain2d.findByOrientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.findByOrientation.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

select grains whose mean orientation is close to a reference orientation or fibre

## Syntax

<div class="mx-form" markdown="1">

```python
selected = grains.findByOrientation(ori, 5*degree)
selected = grains.findByOrientation(f, 5*degree)
```

</div>

## Description

Consider only grains in the reference's crystal phase. Compare their mean orientations
with the reference, or with its nearest orientation on the fibre, accounting for crystal
and specimen symmetry. The angular threshold is inclusive. Grain ids are preserved.

## Input

| `ori` | one reference orientation or fibre, carrying the crystal phase |
| `epsilon` | angular tolerance in radians |

## Output

| `selected` | grain2d list satisfying the phase and angle criteria |

## See also

[EBSD.findByOrientation](EBSD.findByOrientation_py.html), [orientation.angle](orientation.angle_py.html), [fibre.angle](fibre.angle_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
grain2d.findByOrientation(self, ori, epsilon)
```

</div>

MATLAB's [grain2d.findByOrientation](grain2d.findByOrientation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L495">source</a></font>
{% endraw %}
