---
title: 'The class ipfTSLKey'
sidebar: function_reference_sidebar
permalink: ipfTSLKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ipfTSLKey.html
status: Reference
---
{% raw %}
the inverse pole figure key of TSL / OIM, the TSLDirectionKey on the Laue group

## Syntax

```python
key = ipfTSLKey(cs)
key = ipfTSLKey(ebsd['Iron'], ipfDirection=xvector)
rgb = key.orientation2color(ori)
```

## Used on

[EBSDIPFMap](EBSDIPFMap_py.html)

MATLAB's [ipfTSLKey](ipfTSLKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L183">source</a></font>
{% endraw %}
