---
title: 'surfor'
sidebar: function_reference_sidebar
permalink: surfor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
surfor(x, ...) is x.surfor(...), the method of the object passed

## Syntax

```python
surfor(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [grainBoundary](grainBoundary.surfor_py.html) | the cumulative projection length of the boundary segments (Panozzo 1984): a projection is a dot product, the segment vector projected onto the direction, so no angle is formed and none has to be folded into [0, pi) |

## Used on

[ProjectionBasedParameters](ProjectionBasedParameters_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
