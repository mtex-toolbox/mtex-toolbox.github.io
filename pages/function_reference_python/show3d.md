---
title: 'show3d'
sidebar: function_reference_sidebar
permalink: show3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the scene of the current figure in an interactive PyVista window, rotated and zoomed with
the mouse

## Syntax

<div class="mx-form" markdown="1">

```python
show3d()
```

The scene of the current figure.

</div>

<div class="mx-form" markdown="1">

```python
show3d(fig, window_size=(600, 400))
```

Of another figure, in a smaller window.

</div>

## Keywords

| keyword | default | description |
|---|---|---|
| `fig` | `None` | the mtexFigure holding the scene, by default the current one |
| `window_size` | `(900, 900)` | the size of the window in pixels |

## Output

| `p` | the pyvista Plotter of the window |

## See also

[exportHTML](exportHTML_py.html), [gcs](gcs_py.html), [setCamera](setCamera_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L542">source</a></font>
{% endraw %}
