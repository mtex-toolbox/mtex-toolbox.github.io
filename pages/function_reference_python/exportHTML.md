---
title: 'exportHTML'
sidebar: function_reference_sidebar
permalink: exportHTML_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the scene of the current figure written as an interactive three.js page, which a browser
rotates and zooms

## Syntax

The scene of the current figure:

```python
exportHTML('grains.html')
```

Of another figure, with a title:

```python
exportHTML('grains.html', fig=fig, title='Iron grains')
```

## Input

| | |
|---|---|
| `fname` | the name of the HTML file |

## Output

| | |
|---|---|
| `fname` | the file written |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure holding the scene, by default the current one |
| `title` | `'MTEX 3D plot'` | the title of the page |

## See also

[show3d](show3d_py.html), [gcs](gcs_py.html), [saveFigure](saveFigure_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L565">source</a></font>
{% endraw %}
