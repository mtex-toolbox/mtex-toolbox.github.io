---
title: 'vector3d.project2FundamentalRegion'
sidebar: function_reference_sidebar
permalink: vector3d.project2FundamentalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.project2FundamentalRegion.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the directions folded into the fundamental sector of their frame, with antipodal=True into
that of the Laue group; given a centre, the equivalent nearest it instead
(MATLAB's vector3d.project2FundamentalRegion, Miller.project2FundamentalRegion)

## Syntax

<div class="mx-form" markdown="1">

```python
h = h.projectIntoFundamentalRegion()
```

Into the sector of an inverse pole figure.

</div>

<div class="mx-form" markdown="1">

```python
h = h.projectIntoFundamentalRegion(antipodal=True)
```

Into the sector of the Laue group.

</div>

<div class="mx-form" markdown="1">

```python
h = h.projectIntoFundamentalRegion(center)
```

The equivalent nearest a centre.

</div>

## Description

The sector is the conventional one, fundamentalSector of the frame. Vectors in no
crystal frame are returned as they are.

## Input

| `h` | Miller |
| `center` | Miller, the centre the equivalent nearest to it is taken for |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | fold the directions as axes, into the sector of the Laue group |

## Output

| `h` | Miller, in the shape of h |

## See also

[fundamentalSector](fundamentalSector_py.html), [projectIntoRegion](projectIntoRegion_py.html), [Miller.symmetrise](Miller.symmetrise_py.html)

MATLAB's [vector3d.project2FundamentalRegion](vector3d.project2FundamentalRegion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1107">source</a></font>
{% endraw %}
