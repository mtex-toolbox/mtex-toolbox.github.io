---
title: 'sceneHTML'
sidebar: function_reference_sidebar
permalink: sceneHTML_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the scene as a standalone HTML page that draws it with three.js in the browser, turned
and zoomed with the mouse

## Syntax

<div class="mx-form" markdown="1">

```python
page = sceneHTML(gcs())
```

The scene of the current figure.

</div>

<div class="mx-form" markdown="1">

```python
page = sceneHTML(scene, title='grains')
```

With a title of the page.

</div>

## Description

The page holds the geometry and the colours compressed in itself and loads three.js from
a CDN.

## Input

| `scene` | scene3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `title` | `'MTEX 3D plot'` | the title of the page |

## Output

| `page` | str, the HTML text |

## See also

[writeHTML](writeHTML_py.html), [exportHTML](exportHTML_py.html), [renderImage](renderImage_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/render3d.py#L321">source</a></font>
{% endraw %}
