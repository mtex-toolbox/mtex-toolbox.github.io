---
title: 'convexity'
sidebar: function_reference_sidebar
permalink: convexity_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
compare each grain area with the area of its convex hull.

## Syntax

<div class="mx-form" markdown="1">

```python
ratio = convexity(grains)
```

</div>

## Description

For an MTEX object, convexity(x, ...) calls x.convexity(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
convexity(x, *args, **kwargs)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
