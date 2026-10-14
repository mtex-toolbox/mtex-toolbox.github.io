---
title: 'paris'
sidebar: function_reference_sidebar
permalink: paris_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
measure outline indentation relative to the convex hull, in percent.

## Syntax

<div class="mx-form" markdown="1">

```python
indentation = paris(grains)
```

</div>

## Description

For an MTEX object, paris(x, ...) calls x.paris(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
paris(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.paris_py.html) | measure how strongly an outline is indented relative to its convex hull |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
