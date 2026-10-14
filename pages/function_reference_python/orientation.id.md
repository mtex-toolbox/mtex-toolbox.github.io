---
title: 'orientation.id'
sidebar: function_reference_sidebar
permalink: orientation.id_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

construct identity rotations between specified reference frames.

## Syntax

<div class="mx-form" markdown="1">

```python
ori = orientation.id(cs)
ori = orientation.id(10, cs, ss)
```

</div>

## Description

Sizes may be separate integers or a tuple, followed by the crystal and specimen frames.
Without sizes, return one scalar orientation. Identity means aligned Cartesian axes;
it does not infer a crystallographic orientation relationship between different phases.

## See also

[orientation.nan](orientation.nan_py.html), [orientation.rand](orientation.rand_py.html), [orientation.align](orientation.align_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
orientation.id(*args)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L388">source</a></font>
{% endraw %}
