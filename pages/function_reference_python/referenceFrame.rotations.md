---
title: 'referenceFrame.rotations'
sidebar: function_reference_sidebar
permalink: referenceFrame.rotations_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

return only the proper rotations in this frame's point group.

## Syntax

<div class="mx-form" markdown="1">

```python
rotations = cs.rotations()
```

</div>

## Description

The result is a rotation container. Improper operations are omitted; use cs.rot to
obtain all point-group operations with their parity.

## See also

[referenceFrame.rot](referenceFrame.rot_py.html), [referenceFrame.properGroup](referenceFrame.properGroup_py.html), [referenceFrame.properSubGroup](referenceFrame.properSubGroup_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
referenceFrame.rotations(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L252">source</a></font>
{% endraw %}
