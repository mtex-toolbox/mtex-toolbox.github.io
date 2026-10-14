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

<div class="mx-form" markdown="1">

```python
f = fibre.rand(10, cs)
```

Ten full fibres in the crystal frame cs.

</div>

<div class="mx-form" markdown="1">

```python
f = fibre.rand(10, cs, ss, rng=rng)
```

Between cs and ss, from a generator.

</div>

## Input

| `args` | the shape, then the frames, crystal and specimen |

## Keywords

| keyword | default | description |
|---|---|---|
| `rng` | `None` | a numpy random generator |

## Output

| `f` | fibre, full fibres h \|\| r with h and r uniform on the sphere |

## See also

[orientation.rand](orientation.rand_py.html), [vector3d.rand](vector3d.rand_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L360">source</a></font>
{% endraw %}
