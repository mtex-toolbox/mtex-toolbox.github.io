---
title: 'rotation.byAxisAngle'
sidebar: function_reference_sidebar
permalink: rotation.byAxisAngle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.byAxisAngle.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

the rotations by the angle omega about the axis v

## Syntax

```python
rot = rotation.byAxisAngle(v, omega)
```

Three about z:

```python
rot = rotation.byAxisAngle(zvector, [10*degree, 20*degree, 30*degree])
```

## Signature

```python
rotation.byAxisAngle(v, omega)
```

MATLAB's [rotation.byAxisAngle](rotation.byAxisAngle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L541">source</a></font>
{% endraw %}
