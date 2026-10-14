---
title: 'fibre.rotation'
sidebar: function_reference_sidebar
permalink: fibre.rotation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.rotation.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the rotations along the fibre, points x shape, turning about h from o1 to o2;
return_angles=True also gives the angles omega they are turned from o1 by, of the same shape,
MATLAB's second output

## Syntax

```python
rot = f.rotation()
rot = f.rotation(points=100)
rot, omega = f.rotation(return_angles=True)
```

## Signature

```python
fibre.rotation(self, points=1000, return_angles=False)
```

MATLAB's [fibre.rotation](fibre.rotation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L164">source</a></font>
{% endraw %}
