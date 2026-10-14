---
title: 'rotation.inv'
sidebar: function_reference_sidebar
permalink: rotation.inv_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

return the rotation that reverses each input rotation.

## Syntax

<div class="mx-form" markdown="1">

```python
inverse = rot.inv()
```

</div>

## Description

For unit quaternions, inversion is quaternion conjugation. If `v2=rot*v1`, then
`inverse*v2=v1`, up to numerical precision. Array shape is preserved.

## See also

[quaternion.conj](quaternion.conj_py.html), [orientation.inv](orientation.inv_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
rotation.inv(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L949">source</a></font>
{% endraw %}
