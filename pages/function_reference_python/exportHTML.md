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

<div class="mx-form" markdown="1">

```python
exportHTML('grains.html')
```

The scene of the current figure.

</div>

<div class="mx-form" markdown="1">

```python
exportHTML('grains.html', fig=fig, title='Iron grains')
```

Of another figure, with a title.

</div>

## Input

| `fname` | the name of the HTML file |

## Keywords

| keyword | default | description |
|---|---|---|
| `fig` | `None` | the mtexFigure holding the scene, by default the current one |
| `title` | `'MTEX 3D plot'` | the title of the page |

## Output

| `fname` | the file written |

## See also

[show3d](show3d_py.html), [gcs](gcs_py.html), [saveFigure](saveFigure_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L567">source</a></font>
{% endraw %}
