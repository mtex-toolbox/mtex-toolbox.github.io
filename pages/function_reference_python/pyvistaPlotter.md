---
title: 'pyvistaPlotter'
sidebar: function_reference_sidebar
permalink: pyvistaPlotter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a PyVista plotter drawing a 3D scene, its camera set by the plotting convention

## Syntax

<div class="mx-form" markdown="1">

```python
p = pyvistaPlotter(gcs())
```

The scene of the current figure.

</div>

<div class="mx-form" markdown="1">

```python
p.show()
```

In an interactive window, as show3d().

</div>

<div class="mx-form" markdown="1">

```python
p = pyvistaPlotter(gcs(), off_screen=True, window_size=(400, 300))
```

Offscreen, of a size.

</div>

<div class="mx-form" markdown="1">

```python
p = pyvistaPlotter(gcs(), plotter=q)
```

Into a plotter of your own.

</div>

## Description

A scene3d holds what plot draws of a volume, grains in 3D and maps in planes of space as
NumPy arrays: meshes, voxel slices, pictures, lines and points. This draws its items into
a pyvista.Plotter, unlit, with their colours and opacities, and sets a parallel projection
looking from where the plotting convention says, so that PyVista's view matches the
figure. show3d opens it interactively, renderImage takes its picture, exportHTML writes the
scene as a three.js page instead. PyVista is the plot3d extra.

## Input

| `scene` | scene3d, as gcs() gives it for the current figure |

## Keywords

| keyword | default | description |
|---|---|---|
| `off_screen` | `False` | render without a window |
| `window_size` | `(800, 800)` | the size of the window in pixels, (width, height) |
| `plotter` | `None` | pyvista.Plotter to draw into instead of a new one |

## Output

| `p` | pyvista.Plotter |

## See also

[show3d](show3d_py.html), [renderImage](renderImage_py.html), [exportHTML](exportHTML_py.html), [gcs](gcs_py.html), [EBSD3Plotting](EBSD3Plotting_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/render3d.py#L45">source</a></font>
{% endraw %}
