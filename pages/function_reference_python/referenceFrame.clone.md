---
title: 'referenceFrame.clone'
sidebar: function_reference_sidebar
permalink: referenceFrame.clone_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

make an editable, unregistered copy of a reference frame.

## Syntax

<div class="mx-form" markdown="1">

```python
changed = cs.clone()
```

</div>

## Description

The clone starts with the same basis, group and metadata. It is unsealed so that its
properties can be changed before calling intern to obtain the registered session frame.
Copying a data container does not clone its frame automatically.

## See also

[referenceFrame.intern](referenceFrame.intern_py.html), [referenceFrame.sibling](referenceFrame.sibling_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
referenceFrame.clone(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/__init__.py#L289">source</a></font>
{% endraw %}
