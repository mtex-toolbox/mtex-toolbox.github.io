---
title: 'The class orientationColorKey'
sidebar: function_reference_sidebar
permalink: orientationColorKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationColorKey.html
status: Reference
---
{% raw %}
a colour key turning orientations into colours

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = key.orientation2color(ori)    an (..., 3) array in [0, 1]
key.frameA, key.frameB, key.antipodal
```

</div>

## Members

| [CS](orientationColorKey.CS_py.html) | the crystal frame of the key, frameA |
| [orientation2color](orientationColorKey.orientation2color_py.html) | the colours of orientations, an (..., 3) array in [0, 1] |
| [SS](orientationColorKey.SS_py.html) | the specimen frame of the key, frameB |

MATLAB's [orientationColorKey](orientationColorKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L40">source</a></font>
{% endraw %}
