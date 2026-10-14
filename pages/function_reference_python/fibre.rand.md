---
title: 'fibre.rand'
sidebar: function_reference_sidebar
permalink: fibre.rand_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

random fibres between random crystal and specimen directions, of the shape and between the
frames given; MATLAB's fibre.rand

## Syntax

Ten full fibres in the crystal frame cs:

```python
f = fibre.rand(10, cs)
```

Between cs and ss, from a generator:

```python
f = fibre.rand(10, cs, ss, rng=rng)
```

## Input

| | |
|---|---|
| `args` | the shape, then the frames, crystal and specimen |

## Output

| | |
|---|---|
| `f` | fibre, full fibres h \|\| r with h and r uniform on the sphere |

## Keywords

| | default | |
|---|---|---|
| `rng` | `None` | a numpy random generator |

## See also

[orientation.rand](orientation.rand_py.html), [vector3d.rand](vector3d.rand_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L360">source</a></font>
{% endraw %}
