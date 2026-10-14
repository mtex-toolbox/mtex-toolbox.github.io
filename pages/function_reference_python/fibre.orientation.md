---
title: 'fibre.orientation'
sidebar: function_reference_sidebar
permalink: fibre.orientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.orientation.html
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the orientations along the fibre, points x shape, turning about h from o1 to o2, MATLAB's
fibre.orientation

## Syntax

<div class="mx-form" markdown="1">

```python
ori = f.orientation()
```

1000 orientations along the fibre.

</div>

<div class="mx-form" markdown="1">

```python
ori = f.orientation(points=10)
```

10 of them.

</div>

## Input

| `f` | fibre |

## Keywords

| keyword | default | description |
|---|---|---|
| `points` | `1000` | the number of orientations per fibre |

## Output

| `ori` | orientation between the fibre's frames, of shape (points,) + f.shape |

## See also

[fibre.rotation](fibre.rotation_py.html)

MATLAB's [fibre.orientation](fibre.orientation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L205">source</a></font>
{% endraw %}
