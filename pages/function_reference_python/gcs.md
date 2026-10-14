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

<div class="mx-form" markdown="1">

```python
plot(grains3); s = gcs()
```

The scene of the current figure.

</div>

<div class="mx-form" markdown="1">

```python
s = gcs(fig)
```

Of another figure.

</div>

## Keywords

| keyword | default | description |
|---|---|---|
| `fig` | `None` | the mtexFigure, by default the current one |

## Output

| `s` | scene3d, its items the meshes, lines and pictures drawn |

## See also

[show3d](show3d_py.html), [exportHTML](exportHTML_py.html), [setCamera](setCamera_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L302">source</a></font>
{% endraw %}
