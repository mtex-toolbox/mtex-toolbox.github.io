---
title: 'poles'
sidebar: function_reference_sidebar
permalink: poles_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the poles of orientations: every orientation applied to every distinct equivalent of the
crystal direction h, and every image of those under the specimen group; MATLAB's
ori.SS * (ori * symmetrise(h))

## Syntax

The poles of the {100} directions:

```python
p = poles(ori, Miller(1, 0, 0, cs))
```

An axis and its antipode counted once:

```python
p = poles(ori, Miller(1, 1, 1, cs), antipodal=True)
```

The poles are what plotPF draws for a list of orientations. An equivalent counts once, and
an axis and its antipode count once where the pole figure cannot tell h from -h: when
antipodal is asked for, h is an axis, or -h is an equivalent of h. The result is antipodal
then.

## Input

| | |
|---|---|
| `ori` | orientation, shaped (...) |
| `h` | Miller or vector3d, one crystal direction |

## Output

| | |
|---|---|
| `p` | vector3d in the specimen frame, shaped (..., m) over the m distinct equivalents |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `False` | count an axis and its antipode once |

## See also

[inversePoles](inversePoles_py.html), [plotPF](SO3Fun.plotPDF_py.html), [symmetrise](symmetrise_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/poles.py#L50">source</a></font>
{% endraw %}
