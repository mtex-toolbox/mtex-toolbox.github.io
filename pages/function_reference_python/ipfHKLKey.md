---
title: 'The class ipfHKLKey'
sidebar: function_reference_sidebar
permalink: ipfHKLKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ipfHKLKey.html
status: Reference
---
{% raw %}
the inverse pole figure key of HKL Channel 5, the HKLDirectionKey on the Laue group

## Syntax

<div class="mx-form" markdown="1">

```python
key = ipfHKLKey(cs)
key = ipfHKLKey(ebsd['Iron'], ipfDirection=xvector)
rgb = key.orientation2color(ori)
```

</div>

## Input

| `x` | crystalFrame, orientation, or single-phase EBSD or grain data |
| `ipfDirection` | vector3d specimen direction whose crystal alignment is coloured; default zvector |

## Used on

[EBSDIPFMap](EBSDIPFMap_py.html)

MATLAB's [ipfHKLKey](ipfHKLKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L315">source</a></font>
{% endraw %}
