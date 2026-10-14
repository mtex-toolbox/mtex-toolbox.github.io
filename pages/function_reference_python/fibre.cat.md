---
title: 'fibre.cat'
sidebar: function_reference_sidebar
permalink: fibre.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.cat.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the fibres joined into one list along an axis, MATLAB's [f1, f2]

## Syntax

One after the other:

```python
f = cat(f1, f2)
```

Side by side:

```python
f = cat(f1, f2, axis=1)
```

## Input

| | |
|---|---|
| `fibres` | fibre, between the same frames |

## Output

| | |
|---|---|
| `f` | fibre |

## Keywords

| | default | |
|---|---|---|
| `axis` | `0` | the axis of the shape along which the fibres are joined |

## See also

[fibre.reshape](fibre.reshape_py.html), [fibre.flatten](fibre.flatten_py.html)

MATLAB's [fibre.cat](fibre.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L153">source</a></font>
{% endraw %}
