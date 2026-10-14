---
title: 'SO3FunComposition.rotate'
sidebar: function_reference_sidebar
permalink: SO3FunComposition.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunComposition.rotate.html
status: Reference
---
{% raw %}
A method of [SO3FunComposition](SO3FunComposition_index_py.html).

the composition of the components rotated by r from the left or the right; MATLAB's rotate

## Syntax

Rotated in specimen coordinates:

```python
SO3F = SO3F.rotate(r)
```

Rotated in crystal coordinates:

```python
SO3F = SO3F.rotate(r, side='right')
```

Every component is rotated in its own representation.

## Input

| | |
|---|---|
| `SO3F` | SO3FunComposition |
| `r` | rotation |

## Output

| | |
|---|---|
| `SO3F` | SO3FunComposition |

## Keywords

| | default | |
|---|---|---|
| `side` | `'left'` | 'left', the specimen side, or 'right', the crystal side, as MATLAB's flag 'right' |

## See also

[SO3FunHarmonic.rotate](SO3FunHarmonic.rotate_py.html), [SO3FunRBF.rotate](SO3FunRBF.rotate_py.html)

MATLAB's [SO3FunComposition.rotate](SO3FunComposition.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L359">source</a></font>
{% endraw %}
