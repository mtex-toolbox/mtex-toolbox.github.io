---
title: 'gcs'
sidebar: function_reference_sidebar
permalink: gcs_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the scene of the current axes of a figure, the 3D scene a plot of a volume, of 3D grains
or of maps in several planes draws into; None when the axes hold none

## Syntax

The scene of the current figure:

```python
plot(grains3); s = gcs()
```

Of another figure:

```python
s = gcs(fig)
```

## Output

| | |
|---|---|
| `s` | scene3d, its items the meshes, lines and pictures drawn |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure, by default the current one |

## See also

[show3d](show3d_py.html), [exportHTML](exportHTML_py.html), [setCamera](setCamera_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L300">source</a></font>
{% endraw %}
