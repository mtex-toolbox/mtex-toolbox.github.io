---
title: 'refineBoundary'
sidebar: function_reference_sidebar
permalink: refineBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
refineBoundary(x, ...) is x.refineBoundary(...), the method of the object passed

## Syntax

```python
refineBoundary(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [grain2d](grain2d.refineBoundary_py.html) | the grains with their boundary and inner boundary refined, every segment split into pieces of about length delta |
| [grain3d](grain3d.refineBoundary_py.html) | the grains with their triangulated boundary refined, every triangle split into four at the midpoints of its edges, n times |

## Used on

[Grains3DSmoothing](Grains3DSmoothing_py.html), [GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
