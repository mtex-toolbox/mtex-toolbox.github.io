---
title: 'grain3Boundary.flipN'
sidebar: function_reference_sidebar
permalink: grain3Boundary.flipN_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [grain3Boundary](grain3Boundary_index_py.html).

the boundary faces turned round, their normals pointing the other way; MATLAB's flipN of
grain3Boundary

## Syntax

<div class="mx-form" markdown="1">

```python
gB = gB.flipN()
```

Every face.

</div>

<div class="mx-form" markdown="1">

```python
gB = gB.flipN(gB.hasGrain(1, 2))
```

The faces between grains 1 and 2.

</div>

## Description

The corners of a face are put in the reverse order, so its normal gB.N points the other
way; a face selected twice is turned twice. The sides, grainId and phaseId, stay; flip
exchanges those. Unlike MATLAB, which turns only triangulated faces, any polygon is turned.

## Input

| `gB` | grain3Boundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `sel` | `None` | the faces to turn, a boolean mask or indices; by default every face |

## Output

| `gB` | grain3Boundary |

## See also

[grain3Boundary.flip](grain3Boundary.flip_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3boundary.py#L189">source</a></font>
{% endraw %}
