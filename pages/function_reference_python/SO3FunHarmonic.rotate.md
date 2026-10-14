---
title: 'SO3FunHarmonic.rotate'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

the function turned by a rotation, from the left or with side='right' from the right, as
rotate(f, rot, side)

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = rotate(SO3F, rot)
```

F(rot^-1 g), turned in the specimen frame.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3F.rotate(rot, side='right')
```

F(g rot^-1), turned in the crystal frame.

</div>

## Description

The Wigner coefficients are turned degree by degree. A symmetry of the side turned that the
rotation does not map onto itself is dropped with a warning. An orientation turns the
function into the other frame of the orientation: from the left its crystal frame must be the
specimen frame of the function, from the right its specimen frame the crystal frame.

## Input

| `SO3F` | SO3FunHarmonic |
| `rot` | rotation or orientation, one |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left', the specimen side, or 'right', the crystal side; MATLAB's flag 'right' |

## Output

| `SO3F` | SO3FunHarmonic |

## See also

[SO3FunHandle.rotate](SO3FunHandle.rotate_py.html), [SO3FunRBF.rotate](SO3FunRBF.rotate_py.html), [rotation](rotation_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L648">source</a></font>
{% endraw %}
