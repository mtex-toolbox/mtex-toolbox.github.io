---
title: 'orientation.fit'
sidebar: function_reference_sidebar
permalink: orientation.fit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.fit.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientation that maps the directions u best onto the directions v in the least squares
sense; MATLAB's orientation.fit

## Syntax

<div class="mx-form" markdown="1">

```python
ori = orientation.fit(u, v, cs, ss)
```

U in the crystal, v in the specimen frame.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.fit(u, v, cs, ss, weights=w)
```

The pairs weighted.

</div>

## Description

The rotation minimises the sum of w |ori * u - v|^2 over the pairs of normalised directions,
by Horn's quaternion method. The crystal frame is that of crystal directions u, the
second frame that of crystal directions v; a frame named fills the one missing, and two
frames named replace both. Without frames the result is between the triclinic frame and the
session's specimen frame.

## Input

| `u, v` | vector3d or Miller, of one shape |
| `frames` | the crystal frame, then the specimen frame or a second crystal frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | a weight per pair; by default all one |

## Output

| `ori` | orientation |

## See also

[orientation.map](orientation.map_py.html), [rotation.fit](rotation.fit_py.html)

MATLAB's [orientation.fit](orientation.fit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L343">source</a></font>
{% endraw %}
