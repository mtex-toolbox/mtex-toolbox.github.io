---
title: 'SO3FunBingham.rotate'
sidebar: function_reference_sidebar
permalink: SO3FunBingham.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunBingham.rotate.html
status: Reference
---
{% raw %}
A method of [SO3FunBingham](SO3FunBingham_index_py.html).

the distribution turned by a rotation, from the left (the specimen side) or, with
side='right', from the right (the crystal side); MATLAB's rotate

## Syntax

Turned in specimen coordinates:

```python
odf = odf.rotate(r)
```

Turned in crystal coordinates:

```python
odf = odf.rotate(r, side='right')
```

The axes of the distribution are turned, and with them the frame on that side: a symmetry
the rotation does not map onto itself is dropped, with a warning.

## Input

| | |
|---|---|
| `odf` | SO3FunBingham |
| `r` | rotation |

## Output

| | |
|---|---|
| `odf` | SO3FunBingham |

## Keywords

| | default | |
|---|---|---|
| `side` | `'left'` | 'left', the specimen side, or 'right', the crystal side, as MATLAB's flag 'right' |

## See also

[SO3FunHarmonic.rotate](SO3FunHarmonic.rotate_py.html), [SO3FunRBF.rotate](SO3FunRBF.rotate_py.html)

MATLAB's [SO3FunBingham.rotate](SO3FunBingham.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L190">source</a></font>
{% endraw %}
