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
join grains that meet the specified boundary, label or orientation criteria.

## Syntax

<div class="mx-form" markdown="1">

```python
merged = merge(grains, pairs)
```

</div>

## Description

For an MTEX object, merge(x, ...) calls x.merge(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
merge(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.merge_py.html) | the grains joined into one along given boundaries, by pairs of ids, by a label per grain, below a misorientation angle, or every inclusion into the grain around it |

## Used on

[CSLBoundaries](CSLBoundaries_py.html), [GrainMerge](GrainMerge_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
