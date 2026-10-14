---
title: 'simplifyBoundary'
sidebar: function_reference_sidebar
permalink: simplifyBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
simplifyBoundary(x, ...) is x.simplifyBoundary(...), the method of the object passed

## Syntax

```python
simplifyBoundary(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [grain2d](grain2d.simplifyBoundary_py.html) | the grains with the vertices of their boundary that carry no shape dropped, those whose removal moves the boundary by less than epsilon, the inner boundary kept on it |

## Used on

[GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
