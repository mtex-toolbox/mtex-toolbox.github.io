---
title: 'writeHTML'
sidebar: function_reference_sidebar
permalink: writeHTML_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the scene written to a file as an interactive HTML page, that of sceneHTML

## Syntax

The scene of the current figure:

```python
writeHTML(gcs(), 'fig.html')
```

With a title of the page:

```python
writeHTML(scene, 'fig.html', title='grains')
```

## Input

| | |
|---|---|
| `scene` | scene3d |
| `fname` | the file name |

## Output

| | |
|---|---|
| `fname` | the file name |

## Keywords

| | default | |
|---|---|---|
| `title` | `'MTEX 3D plot'` | the title of the page |

## See also

[sceneHTML](sceneHTML_py.html), [exportHTML](exportHTML_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/render3d.py#L343">source</a></font>
{% endraw %}
