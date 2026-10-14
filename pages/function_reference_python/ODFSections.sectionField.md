---
title: 'ODFSections.sectionField'
sidebar: function_reference_sidebar
permalink: ODFSections.sectionField_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [ODFSections](ODFSections_index_py.html).

the directions and vectors of a field drawn over section k, None for sections without one

## Syntax

<div class="mx-form" markdown="1">

```python
oS.sectionField(k)
```

None: Euler and axis angle sections carry no field.

</div>

## Description

Only the pole figure sections draw a field over their charts, pfSections.sectionField;
every other kind of section returns None.

## Input

| `k` | int, the index of the section |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `15*degree` | the spacing of the grid the field would be given on |

## Output

| `None` |  |

## See also

[pfSections.sectionField](pfSections.sectionField_py.html), [quiverSectionField](quiverSectionField_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L136">source</a></font>
{% endraw %}
