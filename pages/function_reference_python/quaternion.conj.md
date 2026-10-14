---
title: 'quaternion.conj'
sidebar: function_reference_sidebar
permalink: quaternion.conj_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

return the quaternion conjugate `a - b*i - c*j - d*k`.

## Syntax

<div class="mx-form" markdown="1">

```python
conjugate = q.conj()
```

</div>

## Description

The real coefficient is unchanged and the three imaginary coefficients change sign.
For a unit quaternion this is the inverse rotation; for a general quaternion use
[`quaternion.inv`](quaternion.inv_py.html) to include division by its squared norm.

## Signature

<div class="mx-form" markdown="1">

```python
quaternion.conj(self)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L226">source</a></font>
{% endraw %}
