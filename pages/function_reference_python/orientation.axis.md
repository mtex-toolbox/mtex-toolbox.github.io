---
title: 'orientation.axis'
sidebar: function_reference_sidebar
permalink: orientation.axis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.axis.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the rotational axis, of the representative in the fundamental region; with a second
orientation the axis of their disorientation in the specimen frame; symmetry=False the axis of
the rotation itself, antipodal= the axis read as an axis or not

## Syntax

```python
orientation.axis(self, other=None, symmetry=True, antipodal=None)
```

```python
h = axis(mori)                    # in the crystal frame of mori
h = axis(mori, symmetry=False)
h = axis(mori, 'max')             # of the equivalent that turns the most
h = axis(mori, csHex)             # expressed in csHex, one of the two frames of mori
v = axis(ori1, ori2)              # in the specimen frame, also of two phases
```

MATLAB's [orientation.axis](orientation.axis.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L312">source</a></font>
{% endraw %}
