---
title: 'ipfColors'
sidebar: function_reference_sidebar
permalink: ipfColors_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the colour of every measurement of a map, or of every grain, each phase by its own inverse
pole figure key; what is not indexed takes the background colour. The map goes through the
grid of the key unless exact=True colours every measurement through the key itself; the
grid route is one compiled loop over the quaternions where numba is there

## Syntax

```python
ipfColors(x, ipfDirection=None, unindexed=(1.0, 1.0, 1.0), exact=False, resolution=0.5*degree, at=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L464">source</a></font>
{% endraw %}
