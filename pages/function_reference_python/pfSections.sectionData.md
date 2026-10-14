---
title: 'pfSections.sectionData'
sidebar: function_reference_sidebar
permalink: pfSections.sectionData_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [pfSections](pfSections_index_py.html).

where the symmetric equivalents of orientations fall: the direction of ori * h1, the section
of the twist of ori * h2 and the index of the orientation; withRotation=True adds the rotations

## Syntax

<div class="mx-form" markdown="1">

```python
v, k, src = oS.sectionData(ori)
```

The points of every equivalent in its section.

</div>

<div class="mx-form" markdown="1">

```python
v, k, src, q = oS.sectionData(ori, withRotation=True)
```

With the quaternions of the equivalents.

</div>

## Description

Every orientation is symmetrised; an equivalent falls into the section whose twist angle
of ori * h2 about ori * h1, measured against the reference field, lies within oS.tol of
the section's angle, and is drawn at ori * h1. Equivalents beside every section are left
out.

## Input

| `ori` | orientation between oS.frameA and oS.frameB |

## Keywords

| keyword | default | description |
|---|---|---|
| `withRotation` | `False` | also return the quaternions of the equivalents |

## Output

| `v` | vector3d of the specimen frame, the direction ori * h1 of every equivalent kept |
| `k` | int array, the section of every equivalent kept |
| `src` | int array, the index into ori.flatten() every equivalent came from |
| `q` | (n, 4) array, the quaternions of the equivalents kept (withRotation=True only) |

## See also

[pfSections](pfSections_index_py.html), [sigmaSections](sigmaSections_index_py.html), [plotSection](S2Fun.plotSection_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L480">source</a></font>
{% endraw %}
