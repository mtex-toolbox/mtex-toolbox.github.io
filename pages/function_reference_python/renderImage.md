---
title: 'renderImage'
sidebar: function_reference_sidebar
permalink: renderImage_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the scene drawn offscreen by PyVista, as a picture

## Syntax

<div class="mx-form" markdown="1">

```python
img = renderImage(gcs())
```

The scene of the current figure.

</div>

<div class="mx-form" markdown="1">

```python
img = renderImage(scene, size=(400, 300))
```

400 pixels wide, 300 high.

</div>

## Description

The scene is drawn unlit and flat, as MATLAB draws a patch without a light, seen as its
plotting convention says. This is what a 3D plot shows in its figure; it needs the plot3d
extra (PyVista).

## Input

| `scene` | scene3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `size` | `(800, 800)` | (width, height) of the picture in pixels |

## Output

| `img` | (height, width, 3) uint8 array |

## See also

[show3d](show3d_py.html), [sceneHTML](sceneHTML_py.html), [exportHTML](exportHTML_py.html), [gcs](gcs_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/render3d.py#L117">source</a></font>
{% endraw %}
