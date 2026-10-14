---
title: 'orientation.nan'
sidebar: function_reference_sidebar
permalink: orientation.nan_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

construct missing orientations with their reference frames preserved.

## Syntax

<div class="mx-form" markdown="1">

```python
ori = orientation.nan(10, cs, ss)
```

</div>

## Description

Sizes may be separate integers or one tuple; frames follow the sizes. Every quaternion
coefficient is NaN. Without sizes, return one scalar missing orientation.

## See also

[orientation.id](orientation.id_py.html), orientation.isnan

## Signature

<div class="mx-form" markdown="1">

```python
orientation.nan(*args)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L405">source</a></font>
{% endraw %}
