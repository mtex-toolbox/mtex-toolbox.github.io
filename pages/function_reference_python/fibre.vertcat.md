---
title: 'fibre.vertcat'
sidebar: function_reference_sidebar
permalink: fibre.vertcat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.vertcat.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the fibres joined into one list along an axis, MATLAB's [f1, f2]

## Syntax

<div class="mx-form" markdown="1">

```python
f = cat(f1, f2)
```

One after the other.

</div>

<div class="mx-form" markdown="1">

```python
f = cat(f1, f2, axis=1)
```

Side by side.

</div>

## Input

| `fibres` | fibre, between the same frames |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `0` | the axis of the shape along which the fibres are joined |

## Output

| `f` | fibre |

## See also

[fibre.reshape](fibre.reshape_py.html), [fibre.flatten](fibre.flatten_py.html)

MATLAB's [fibre.vertcat](fibre.vertcat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L153">source</a></font>
{% endraw %}
