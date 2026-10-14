---
title: 'The class S2AxisFieldHandle'
sidebar: function_reference_sidebar
permalink: S2AxisFieldHandle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
an axis field on the sphere given by a function of the directions, with a bandwidth hint
for its expansion

## Syntax

<div class="mx-form" markdown="1">

```python
aF = S2AxisFieldHandle(lambda v: ..., cs)
```

</div>

## Input

| `fun` | callable receiving unit vector3d directions and returning axis vectors; signs are ignored |
| `frame` | referenceFrame of the query directions, or None for frame-free directions |
| `bandwidth` | harmonic degree used when approximating the callable; default defaultS2Bandwidth preference |

## Members

| [eval](S2AxisFieldHandle.eval_py.html) | the axes of the field at the directions, antipodal vectors |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2axisfield.py#L79">source</a></font>
{% endraw %}
