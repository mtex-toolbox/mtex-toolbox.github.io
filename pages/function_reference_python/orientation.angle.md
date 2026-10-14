---
title: 'orientation.angle'
sidebar: function_reference_sidebar
permalink: orientation.angle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.angle.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the rotational angle up to symmetry, of the orientation or of the misorientation to other;
symmetry=False the plain angle, other='max' the angle of the equivalent that turns the most

## Syntax

```python
omega = angle(ori)
```

Ignore the symmetric equivalents:

```python
omega = angle(ori, symmetry=False)
```

```python
omega = angle(ori1, ori2)
omega = angle(mori, 'max')
```

## Signature

```python
orientation.angle(self, other=None, symmetry=True)
```

MATLAB's [orientation.angle](orientation.angle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L350">source</a></font>
{% endraw %}
