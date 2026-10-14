---
title: 'SO3FunHandle.rotate'
sidebar: function_reference_sidebar
permalink: SO3FunHandle.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FunHandle](SO3FunHandle_index_py.html).

the function rotated by r from the left or the right, through the harmonic form;
MATLAB's rotate

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = SO3F.rotate(r)
```

Rotated in specimen coordinates.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3F.rotate(r, side='right')
```

Rotated in crystal coordinates.

</div>

## Description

The handle is expanded into its harmonic form, which is rotated.

## Input

| `SO3F` | SO3FunHandle |
| `r` | rotation |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left', the specimen side, or 'right', the crystal side, as MATLAB's flag 'right' |

## Output

| `SO3F` | SO3FunHarmonic |

## See also

[SO3FunHarmonic.rotate](SO3FunHarmonic.rotate_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/handles.py#L287">source</a></font>
{% endraw %}
