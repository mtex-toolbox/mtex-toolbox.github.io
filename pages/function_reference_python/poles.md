---
title: 'poles'
sidebar: function_reference_sidebar
permalink: poles_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the poles of orientations: every orientation applied to every distinct equivalent of the
crystal direction h, and every image of those under the specimen group, shaped (..., m)
in the specimen frame (MATLAB ori.SS * (ori * symmetrise(h)))

## Syntax

```python
poles(o, h, antipodal=False)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/poles.py#L50">source</a></font>
{% endraw %}
