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

The Cartesian components, at their length:

```python
export(v, 'vectors.txt')
```

Polar angle and azimuth in degrees:

```python
export(v, 'vectors.txt', polar=True)
```

The angles in radians:

```python
export(v, 'vectors.txt', polar=True, radians=True)
```

One more column per named value:

```python
export(v, 'vectors.txt', {'weight': w})
```

The file has a line of column names, x y z or polar angle and azimuth angle, and one row per
vector, the table loadVector3d reads back. A dict passed adds a column per key, one value
per vector.

## Input

| | |
|---|---|
| `v` | vector3d |
| `fname` | the name of the file |

## Output

| | |
|---|---|
| `fname` | the name of the file written |

## Keywords

| | default | |
|---|---|---|
| `polar` | `False` | the polar coordinates instead of x, y, z |
| `radians` | `False` | the polar coordinates in radians instead of degrees |

## See also

[loadVector3d](loadVector3d_py.html), [cprintf](cprintf_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/vectors.py#L106">source</a></font>
{% endraw %}
