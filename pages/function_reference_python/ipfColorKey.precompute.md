---
title: 'ipfColorKey.precompute'
sidebar: function_reference_sidebar
permalink: ipfColorKey.precompute_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [ipfColorKey](ipfColorKey_index_py.html).

MATLAB's precompute: the direction key evaluated once on a grid of the whole sphere, the
colours then read off the node nearest each crystal direction without folding it into the
sector. An unchanged HSV key takes the grid its crystal frame keeps for the session,
any other key a grid of its own, rebuilt when the key has changed since

## Syntax

```python
ipfColorKey.precompute(self, resolution=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L95">source</a></font>
{% endraw %}
