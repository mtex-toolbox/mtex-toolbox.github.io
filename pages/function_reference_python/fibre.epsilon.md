---
title: 'fibre.epsilon'
sidebar: function_reference_sidebar
permalink: fibre.epsilon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [fibre](fibre_index_py.html).

the epsilon fibre of rolling textures, between the orientations MTEX puts at its ends; MATLAB's fibre.epsilon

## Syntax

The segment in the crystal frame cs:

```python
f = fibre.epsilon(cs)
```

The whole fibre between cs and ss:

```python
f = fibre.epsilon(cs, ss, full=True)
```

The segment runs from the Euler angles (315, 0, 0) to (270, 54.7356, 45) degrees
(Bunge); the frames default to the cubic group 432 and the specimen frame.

## Input

| | |
|---|---|
| `frames` | the crystal frame, then the specimen frame |

## Output

| | |
|---|---|
| `f` | fibre |

## Keywords

| | default | |
|---|---|---|
| `full` | `False` | the whole fibre instead of the segment between the ends |

## See also

[fibre](fibre_index_py.html), [fibre.theta](fibre.theta_py.html), [fibre.orientation](fibre.orientation_py.html)

## Used on

[OrientationFibre](OrientationFibre_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L609">source</a></font>
{% endraw %}
