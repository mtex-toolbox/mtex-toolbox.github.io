---
title: 'EBSD.findByOrientation'
sidebar: function_reference_sidebar
permalink: EBSD.findByOrientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.findByOrientation.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

select measurements close to a reference orientation or an orientation fibre

## Syntax

<div class="mx-form" markdown="1">

```python
selected = ebsd.findByOrientation(ori, 5*degree)
selected = ebsd.findByOrientation(f, 5*degree)
```

</div>

## Description

Only the reference's crystal phase is considered. Orientations within epsilon of the
reference, or of any orientation on the fibre, are returned as a selected EBSD map.
Distances account for crystal and specimen symmetry. The threshold is inclusive.

## Input

| `ori` | one reference orientation, or fibre, carrying the crystal phase |
| `epsilon` | angular tolerance in radians |

## Output

| `selected` | EBSD measurements satisfying the phase and angle criteria |

## See also

[orientation.angle](orientation.angle_py.html), [fibre.angle](fibre.angle_py.html), [EBSD.inpolygon](EBSD.inpolygon_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
EBSD.findByOrientation(self, ori, epsilon)
```

</div>

MATLAB's [EBSD.findByOrientation](EBSD.findByOrientation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L484">source</a></font>
{% endraw %}
