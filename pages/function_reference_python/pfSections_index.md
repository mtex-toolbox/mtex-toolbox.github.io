---
title: 'The class pfSections'
sidebar: function_reference_sidebar
permalink: pfSections_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: pfSections_index.html
status: Reference
---
{% raw %}
pole figure sections: the pole figure of h1, split by the twist of h2 about it

## Syntax

<div class="mx-form" markdown="1">

```python
pfSections(cs, ss, h1=..., h2=..., sections=6, omega=values)
```

</div>

<div class="mx-form" markdown="1">

```python
sigmaSections(cs, ss, sections=6, sigma=values)
```

With h1 = c*, h2 = a.

</div>

## Input

| `frameA` | crystal reference frame |
| `frameB` | specimen reference frame; None uses the default |
| `h1` | first crystal direction; default reciprocal c axis |
| `h2` | second crystal direction, defining twist about h1; default a axis; must not be parallel to h1 |
| `sections` | section count when explicit twist angles are omitted; default 6 |
| `values` | explicit twist angles in radians |
| `tol` | angular assignment tolerance in radians; default 5*degree |
| `maxOmega` | maximum twist angle in radians; None uses the symmetry-dependent period |
| `kwargs` | twist angles may also be supplied as omega=values |

## Members

| [h1](pfSections.h1_py.html) | the crystal direction whose pole figure every section shows, a unit vector |
| [h2](pfSections.h2_py.html) | the part of the second crystal direction perpendicular to h1, whose twist about h1 splits the sections |
| [omega](pfSections.omega_py.html) | the twist angles of the sections |
| [orientationsAt](pfSections.orientationsAt_py.html) | the orientations at points vs of the chart of section k: h1 on the point, h2 on the twisted reference field there |
| [referenceField](pfSections.referenceField_py.html) | the field the twist is measured against, at directions of the specimen frame |
| [sectionCharts](pfSections.sectionCharts_py.html) | the chart section k is drawn on, the conventional sector of the specimen frame, the upper hemisphere when h1 has a symmetric equivalent opposite it |
| [sectionData](pfSections.sectionData_py.html) | where the symmetric equivalents of orientations fall: the direction of ori * h1, the section of the twist of ori * h2 and the index of the orientation |
| [sectionField](pfSections.sectionField_py.html) | the reference field turned into the section, at an equispaced grid of its region |
| [sectionLabel](pfSections.sectionLabel_py.html) | the title of section k, the twist angle in degrees |
| [twisted](pfSections.twisted_py.html) | the field turned about the direction by the angle of the section, where ori * h2 has to point for the orientation to belong there |

MATLAB's [pfSections_index](pfSections_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L431">source</a></font>
{% endraw %}
