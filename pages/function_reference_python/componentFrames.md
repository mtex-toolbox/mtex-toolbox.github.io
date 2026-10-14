---
title: 'componentFrames'
sidebar: function_reference_sidebar
permalink: componentFrames_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the frames the components are functions on: the group on the tangent side is stripped

## Syntax

<div class="mx-form" markdown="1">

```python
cA, cB = componentFrames(cs, ss)
```

Of a field in the left tangent space.

</div>

<div class="mx-form" markdown="1">

```python
cA, cB = componentFrames(cs, ss, side='right')
```

Of one in the right tangent space.

</div>

## Description

A field in the left tangent space returns vectors in the specimen frame, which turn with a
specimen symmetry, so its three components are invariant only under the crystal symmetry;
in the right tangent space the other way round. The port's own, no MATLAB counterpart.

## Input

| `CS, SS` | the crystal and the specimen frame of the field |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left' or 'right', the tangent space |

## Output

| `cA, cB` | the crystal and the specimen frame of the components |

## See also

[SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L58">source</a></font>
{% endraw %}
