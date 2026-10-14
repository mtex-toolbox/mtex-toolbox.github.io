---
title: 'findByLocation'
sidebar: function_reference_sidebar
permalink: findByLocation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
findByLocation(x, ...) is x.findByLocation(...), the method of the object passed

## Syntax

```python
findByLocation(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [EBSD](EBSD.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [EBSD3](EBSD3.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [grain2d](grain2d.findByLocation_py.html) | the positions of the outlines a point lies in the position of the outline holding each point, -1 for a point in none |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
