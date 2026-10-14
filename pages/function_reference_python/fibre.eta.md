---
title: 'fibre.eta'
sidebar: function_reference_sidebar
permalink: fibre.eta_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the eta fibre of rolling textures, between the orientations MTEX puts at its ends; MATLAB's fibre.eta

## Syntax

<div class="mx-form" markdown="1">

```python
f = fibre.eta(cs)
```

The segment in the crystal frame cs.

</div>

<div class="mx-form" markdown="1">

```python
f = fibre.eta(cs, ss, full=True)
```

The whole fibre between cs and ss.

</div>

## Description

The segment runs from the Euler angles (0, 0, 0) to (0, 45, 0) degrees
(Bunge); the frames default to the cubic group 432 and the specimen frame.

## Input

| `frames` | the crystal frame, then the specimen frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `full` | `False` | the whole fibre instead of the segment between the ends |

## Output

| `f` | fibre |

## See also

[fibre](fibre_index_py.html), [fibre.theta](fibre.theta_py.html), [fibre.orientation](fibre.orientation_py.html)

## Used on

[OrientationFibre](OrientationFibre_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L615">source</a></font>
{% endraw %}
