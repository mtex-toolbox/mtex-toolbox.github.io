---
title: 'The class directionColorKey'
sidebar: function_reference_sidebar
permalink: directionColorKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: directionColorKey.html
status: Reference
---
{% raw %}
a colour key turning directions into colours

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = key.direction2color(h)     an (..., 3) array in [0, 1]
key.sym, key.sR                  the group and the sector the key is defined on
key.plot()                       the key drawn on its sector
```

</div>

## Members

| [direction2color](directionColorKey.direction2color_py.html) | the colours of directions, an (..., 3) array in [0, 1] |
| [keySector](directionColorKey.keySector_py.html) | a sector the key is drawn over |
| [plot](directionColorKey.plot_py.html) | the key drawn on its sector, or with complete=True over the whole sphere |

MATLAB's [directionColorKey](directionColorKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L264">source</a></font>
{% endraw %}
