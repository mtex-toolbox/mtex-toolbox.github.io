---
title: 'orientation.byAxisAngle'
sidebar: function_reference_sidebar
permalink: orientation.byAxisAngle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.byAxisAngle.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientations of the rotations by omega about the axis v; about a crystal direction and no
frames named the rotation of that crystal frame into itself, a misorientation; antipodal=True
marks a misorientation with grain exchange

## Syntax

An orientation:

```python
ori = orientation.byAxisAngle(v, omega, cs, ss)
```

A misorientation about the crystal direction h:

```python
mori = orientation.byAxisAngle(h, omega)
```

## Signature

```python
orientation.byAxisAngle(v, omega, *frames, antipodal=False)
```

MATLAB's [orientation.byAxisAngle](orientation.byAxisAngle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L188">source</a></font>
{% endraw %}
