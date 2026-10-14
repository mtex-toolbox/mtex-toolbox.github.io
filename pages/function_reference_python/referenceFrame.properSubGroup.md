---
title: 'referenceFrame.properSubGroup'
sidebar: function_reference_sidebar
permalink: referenceFrame.properSubGroup_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

return a sibling frame containing only the group's proper rotations.

## Syntax

<div class="mx-form" markdown="1">

```python
proper = cs.properSubGroup()
```

</div>

## Description

Operations with determinant -1 are omitted. The frame basis is retained and the input
frame is unchanged. This differs from properGroup, which also uses rotational parts of
improper operations.

## See also

[referenceFrame.properGroup](referenceFrame.properGroup_py.html), [symmetry.properSubGroup](symmetry.properSubGroup_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
referenceFrame.properSubGroup(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L335">source</a></font>
{% endraw %}
