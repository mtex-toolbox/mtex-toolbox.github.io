---
title: 'exportVector3d'
sidebar: function_reference_sidebar
permalink: exportVector3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
write directions as a text table with a line of column names; MATLAB's vector3d/export

## Syntax

<div class="mx-form" markdown="1">

```python
export(v, 'vectors.txt')
```

The Cartesian components, at their length.

</div>

<div class="mx-form" markdown="1">

```python
export(v, 'vectors.txt', polar=True)
```

Polar angle and azimuth in degrees.

</div>

<div class="mx-form" markdown="1">

```python
export(v, 'vectors.txt', polar=True, radians=True)
```

The angles in radians.

</div>

<div class="mx-form" markdown="1">

```python
export(v, 'vectors.txt', {'weight': w})
```

One more column per named value.

</div>

## Description

The file has a line of column names, x y z or polar angle and azimuth angle, and one row per
vector, the table loadVector3d reads back. A dict passed adds a column per key, one value
per vector.

## Input

| `v` | vector3d |
| `fname` | the name of the file |

## Keywords

| keyword | default | description |
|---|---|---|
| `polar` | `False` | the polar coordinates instead of x, y, z |
| `radians` | `False` | the polar coordinates in radians instead of degrees |

## Output

| `fname` | the name of the file written |

## See also

[loadVector3d](loadVector3d_py.html), [cprintf](cprintf_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/vectors.py#L106">source</a></font>
{% endraw %}
