---
title: 'orientation.byHomochoric'
sidebar: function_reference_sidebar
permalink: orientation.byHomochoric_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientations of homochoric vectors; MATLAB's rotation.byHomochoric

## Syntax

From homochoric vectors:

```python
ori = orientation.byHomochoric(v, cs, ss)
```

A misorientation with grain exchange:

```python
mori = orientation.byHomochoric(v, cs, cs, antipodal=True)
```

A homochoric vector points along the rotational axis and has the length
(3/4 (omega - sin omega))^(1/3) for the rotational angle omega, which maps the rotations
onto a ball of radius (3 pi / 4)^(1/3), volume preserving.

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

[homochoric](homochoric_py.html), [orientation.byRodrigues](orientation.byRodrigues_py.html), [rotation.byHomochoric](rotation.byHomochoric_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L257">source</a></font>
{% endraw %}
