---
title: 'ODFSections.ODFSections'
sidebar: function_reference_sidebar
permalink: ODFSections.ODFSections_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ODFSections.ODFSections.html
status: Reference
---
{% raw %}
sections through orientation space

## Syntax

```python
oS.frameA, oS.frameB       the two frames
oS.tol               the tolerance an orientation may deviate from a section
oS.numSections       how many
oS.sectionCharts(k)  the charts section k is drawn on
oS.sectionData(ori)  where the equivalents of a list fall: directions, section, source
oS.orientationsAt(k, v)   the orientations at points of a chart of section k
oS.plot(x, ...)      plotSection(x, oS, ...)
```

## Signature

```python
ODFSections(frameA, frameB, values, tol)
```

MATLAB's [ODFSections.ODFSections](ODFSections.ODFSections.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L95">source</a></font>
{% endraw %}
