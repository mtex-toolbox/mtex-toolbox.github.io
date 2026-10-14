---
title: 'pfSections.sectionField'
sidebar: function_reference_sidebar
permalink: pfSections.sectionField_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [pfSections](pfSections_index_py.html).

the reference field turned into the section, at an equispaced grid of its region

## Syntax

<div class="mx-form" markdown="1">

```python
v, d = oS.sectionField(0)
```

The field of the first section.

</div>

<div class="mx-form" markdown="1">

```python
v, d = oS.sectionField(1, resolution=10*degree)
```

On a coarser grid.

</div>

## Description

The field shows where ori * h2 points for an orientation to belong to section k: the
reference field of the plotting convention turned about every direction by the section's
twist angle. quiverSectionField draws it.

## Input

| `k` | int, the index of the section |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `15*degree` | the spacing of the equispaced grid |

## Output

| `v` | vector3d, the grid directions inside the region of the chart |
| `d` | vector3d, the field at them |

## See also

[sigmaSections](sigmaSections_index_py.html), [quiverSectionField](quiverSectionField_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L512">source</a></font>
{% endraw %}
