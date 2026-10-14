---
title: 'referenceFrame.properGroup'
sidebar: function_reference_sidebar
permalink: referenceFrame.properGroup_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

replace each point-group operation by its proper rotational part.

## Syntax

<div class="mx-form" markdown="1">

```python
proper = cs.properGroup()
```

</div>

## Description

The result is a sibling frame containing the distinct rotations obtained after dropping
parity from every operation. This can contain rotations absent from the original group's
proper subgroup; use properSubGroup to retain only originally proper operations.

## See also

[referenceFrame.properSubGroup](referenceFrame.properSubGroup_py.html), [symmetry.properGroup](symmetry.properGroup_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
referenceFrame.properGroup(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L322">source</a></font>
{% endraw %}
