---
title: 'SO3FunCBF.rotate'
sidebar: function_reference_sidebar
permalink: SO3FunCBF.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunCBF.rotate.html
status: Reference
---
{% raw %}
A method of [SO3FunCBF](SO3FunCBF_index_py.html).

the function rotated by r on the left, the specimen side, or with side='right' on the crystal
side; the frame of the rotated side turns with it; MATLAB's rotate

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = rotate(SO3F, rot)
```

F(rot^-1 g), the specimen side turned.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3F.rotate(rot, side='right')
```

F(g rot^-1), the crystal side turned.

</div>

## Description

A rotation that is no symmetry of the rotated side's group strips that group from its
frame, with a warning.

## Input

| `SO3F` | SO3FunCBF |
| `r` | rotation, one |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left' or 'right' |

## Output

| `SO3F` | SO3FunCBF |

## See also

[SO3FunHarmonic.rotate](SO3FunHarmonic.rotate_py.html), [rotate](S2Fun.rotate_py.html)

MATLAB's [SO3FunCBF.rotate](SO3FunCBF.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L759">source</a></font>
{% endraw %}
