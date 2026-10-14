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

U in the crystal, v in the specimen frame:

```python
ori = orientation.fit(u, v, cs, ss)
```

The pairs weighted:

```python
ori = orientation.fit(u, v, cs, ss, weights=w)
```

The rotation minimises the sum of w |ori * u - v|^2 over the pairs of normalised directions,
by Horn's quaternion method. The frames are those
named; MATLAB also adopts the frames of crystal directions u and v, which the port does not:
without frames the result is between the triclinic frame and the session's specimen frame.

## Input

| | |
|---|---|
| `u, v` | vector3d or Miller, of one shape |
| `frames` | the crystal frame, then the specimen frame or a second crystal frame |

## Output

| | |
|---|---|
| `ori` | orientation |

## Keywords

| | default | |
|---|---|---|
| `weights` | `None` | a weight per pair; by default all one |

## See also

[orientation.map](orientation.map_py.html), [rotation.fit](rotation.fit_py.html)

MATLAB's [orientation.fit](orientation.fit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L310">source</a></font>
{% endraw %}
