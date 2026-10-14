---
title: 'The class ODFSections'
sidebar: function_reference_sidebar
permalink: ODFSections_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ODFSections_index.html
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

## Members

| | |
|---|---|
| [CS](ODFSections.CS_py.html) | the first frame of the sections, frameA |
| [makeGrid](ODFSections.makeGrid_py.html) | ori = oS.makeGrid(): the orientations of the nodes of every section chart, section by section, at which values are computed for oS.plot(values), MATLAB's makeGrid |
| [numSections](ODFSections.numSections_py.html) | the number of sections |
| [ODFSections](ODFSections.ODFSections_py.html) | sections through orientation space |
| [plot](ODFSections.plot_py.html) | oS.plot(odf), oS.plot(ori), and oS.plot(values, 'smooth') of values on makeGrid's nodes |
| [quiver](ODFSections.quiver_py.html) | quiver(v, w), quiver(vF), quiver(ori, w): arrows at directions, a vector or axis field, or arrows at orientations in the sections of the current figure |
| [sectionField](ODFSections.sectionField_py.html) | the directions and vectors of a field drawn over section k, None for sections without one |
| [sectionScale](ODFSections.sectionScale_py.html) | the scale of the axes of section k, one unless the section shrinks with its value |
| [SS](ODFSections.SS_py.html) | the second frame of the sections, frameB |

MATLAB's [ODFSections_index](ODFSections_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L77">source</a></font>
{% endraw %}
