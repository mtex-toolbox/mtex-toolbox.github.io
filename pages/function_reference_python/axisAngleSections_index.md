---
title: 'The class axisAngleSections'
sidebar: function_reference_sidebar
permalink: axisAngleSections_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
sections of constant rotation angle, each on the axis sector the region allows there

## Syntax

```python
axisAngleSections(cs1, cs2, angles=(10:20:180)*degree)
axisAngleSections(cs1, cs2, sections=5, volumeScaling=False, antipodal=True)
```

## Members

| | |
|---|---|
| [angles](axisAngleSections.angles_py.html) | the rotation angles of the sections |
| [orientationsAt](axisAngleSections.orientationsAt_py.html) | the orientations at axes vs rotated by the angle of section k |
| [outerSector](axisAngleSections.outerSector_py.html) | the sector the axes are drawn on, the conventional sector of the rotations both frames share |
| [sectionCharts](axisAngleSections.sectionCharts_py.html) | the chart section k is drawn on, the axis sector the region allows at its angle |
| [sectionData](axisAngleSections.sectionData_py.html) | where orientations fall: the rotation axes of their projections into the fundamental region, the section of their angle and the index of the orientation |
| [sectionLabel](axisAngleSections.sectionLabel_py.html) | the title of section k, the rotation angle in degrees |
| [sectionScale](axisAngleSections.sectionScale_py.html) | the sector shrinks with the angle, so the axes grow with 1/sin(w/2) to keep areas comparable |

## Used on

[SlipTransmission](SlipTransmission_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L567">source</a></font>
{% endraw %}
