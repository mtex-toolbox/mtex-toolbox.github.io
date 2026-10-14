---
title: 'quaternion.cat'
sidebar: function_reference_sidebar
permalink: quaternion.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.cat.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the list of the operands, MATLAB's [a, b]; single elements are lists of one

## Syntax

One after the other, MATLAB's [v1; v2]:

```python
v = cat(v1, v2)
```

Side by side, MATLAB's [v1, v2]:

```python
v = cat(v1, v2, axis=1)
```

The operands are joined along an axis of their shape, as np.concatenate; a single element
counts as a list of one. They have to agree in what they carry (the frame, antipodal, ...);
an operand of another class is converted to the first one's where it can be.

## Input

| | |
|---|---|
| `arrays` | containers of one class, the first deciding the class of the result |

## Output

| | |
|---|---|
| `v` | the joined container |

## Keywords

| | default | |
|---|---|---|
| `axis` | `0` | the axis of the shape along which the operands are joined |

## See also

[reshape](S2FunHarmonic.reshape_py.html)

MATLAB's [quaternion.cat](quaternion.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/_array.py#L149">source</a></font>
{% endraw %}
