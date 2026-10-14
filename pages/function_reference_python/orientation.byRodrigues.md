---
title: 'orientation.byRodrigues'
sidebar: function_reference_sidebar
permalink: orientation.byRodrigues_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.byRodrigues.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientations of Rodrigues vectors, the axes scaled by tan(omega/2); MATLAB's
orientation.byRodrigues

## Syntax

From Rodrigues vectors:

```python
ori = orientation.byRodrigues(v, cs, ss)
```

A misorientation with grain exchange:

```python
mori = orientation.byRodrigues(v, cs, cs, antipodal=True)
```

## Input

| | |
|---|---|
| `v` | vector3d, or an array with the coordinates along its last axis |
| `frames` | the crystal frame, then the specimen frame or a second crystal frame |

## Output

| | |
|---|---|
| `ori` | orientation |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `False` | mark a misorientation with grain exchange |

## See also

[orientation.byHomochoric](orientation.byHomochoric_py.html), [Rodrigues](Rodrigues_py.html), [orientation.byAxisAngle](orientation.byAxisAngle_py.html)

MATLAB's [orientation.byRodrigues](orientation.byRodrigues.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L238">source</a></font>
{% endraw %}
