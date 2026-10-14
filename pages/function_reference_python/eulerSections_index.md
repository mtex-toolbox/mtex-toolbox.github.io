---
title: 'The class eulerSections'
sidebar: function_reference_sidebar
permalink: eulerSections_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
sections of constant Euler angle, the first or the third of a convention

## Syntax

```python
phi2Sections(cs, ss, sections=6), phi2Sections(cs, ss, phi2=(0:15:90)*degree)
phi1Sections, alphaSections, gammaSections
```

## Members

| | |
|---|---|
| [angleName](eulerSections.angleName_py.html) | the name of the Euler angle that is constant on each section |
| [axisLabels](eulerSections.axisLabels_py.html) | the labels of the two chart axes, the other outer Euler angle and the middle one |
| [names](eulerSections.names_py.html) | the names of the three Euler angles of the convention of the sections |
| [orientationsAt](eulerSections.orientationsAt_py.html) | the orientations at points vs of the chart of section k |
| [sectionCharts](eulerSections.sectionCharts_py.html) | the chart section k is drawn on, the Euler angle box as a plain projection |
| [sectionData](eulerSections.sectionData_py.html) | where the symmetric equivalents of orientations fall: the chart directions, the section of each and the index of the orientation it comes from |
| [sectionLabel](eulerSections.sectionLabel_py.html) | the title of section k, the constant angle in degrees |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L167">source</a></font>
{% endraw %}
