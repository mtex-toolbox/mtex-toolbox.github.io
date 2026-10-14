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
write directions as a text table with a line of column names

## Syntax

```python
exportVector3d(v, fname, *args, polar=False, radians=False)
```

```python
exportVector3d(v, 'vectors.txt')                    the Cartesian components, at their length
exportVector3d(v, 'vectors.txt', polar=True)        polar angle and azimuth, in degrees unless radians=True
exportVector3d(v, 'vectors.txt', {'weight': w})     one more column per named value
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/vectors.py#L87">source</a></font>
{% endraw %}
