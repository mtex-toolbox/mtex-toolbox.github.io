---
title: 'vector3d.vertcat'
sidebar: function_reference_sidebar
permalink: vector3d.vertcat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.vertcat.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the list of the operands, MATLAB's [a, b]; single elements are lists of one

## Syntax

<div class="mx-form" markdown="1">

```python
v = cat(v1, v2)
```

One after the other, MATLAB's [v1; v2].

</div>

<div class="mx-form" markdown="1">

```python
v = cat(v1, v2, axis=1)
```

Side by side, MATLAB's [v1, v2].

</div>

## Description

The operands are joined along an axis of their shape, as np.concatenate; a single element
counts as a list of one. They have to agree in what they carry (the frame, antipodal, ...);
an operand of another class is converted to the first one's where it can be.

## Input

| `arrays` | containers of one class, the first deciding the class of the result |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `0` | the axis of the shape along which the operands are joined |

## Output

| `v` | the joined container |

## See also

[reshape](S2FunHarmonic.reshape_py.html)

MATLAB's [vector3d.vertcat](vector3d.vertcat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/_array.py#L149">source</a></font>
{% endraw %}
