---
title: 'merge'
sidebar: function_reference_sidebar
permalink: merge_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
merge(x, ...) is x.merge(...), the method of the object passed

## Syntax

```python
merge(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [grain2d](grain2d.merge_py.html) | the grains joined into one along given boundaries, by pairs of ids, by a label per grain, below a misorientation angle, or every inclusion into the grain around it |

## Used on

[CSLBoundaries](CSLBoundaries_py.html), [GrainMerge](GrainMerge_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
