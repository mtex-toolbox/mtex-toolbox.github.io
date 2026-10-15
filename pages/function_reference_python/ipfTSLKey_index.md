---
title: 'The class ipfTSLKey'
sidebar: function_reference_sidebar
permalink: ipfTSLKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ipfTSLKey_index.html
status: Reference
---
{% raw %}
the inverse pole figure key of TSL / OIM, the TSLDirectionKey on the Laue group

## Syntax

<div class="mx-form" markdown="1">

```python
key = ipfTSLKey(cs)
key = ipfTSLKey(ebsd['Iron'], ipfDirection=xvector)
rgb = key.orientation2color(ori)
```

</div>

## Input

| `x` | crystalFrame, orientation, or single-phase EBSD or grain data |
| `ipfDirection` | vector3d specimen direction whose crystal alignment is coloured; default zvector |

## Used on

[EBSDIPFMap](EBSDIPFMap_py.html)

MATLAB's [ipfTSLKey_index](ipfTSLKey_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L300">source</a></font>
{% endraw %}
