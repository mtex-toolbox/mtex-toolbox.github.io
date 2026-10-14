---
title: 'diff'
sidebar: function_reference_sidebar
permalink: diff_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
differentiate a function on the circle.

## Syntax

<div class="mx-form" markdown="1">

```python
df = diff(f)
```

</div>

## Description

For an MTEX object, diff(x, ...) calls x.diff(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
diff(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S1FunHarmonic](S1FunHarmonic.diff_py.html) | differentiate the circular function with respect to its angle in radians |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
