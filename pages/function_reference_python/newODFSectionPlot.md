---
title: 'newODFSectionPlot'
sidebar: function_reference_sidebar
permalink: newODFSectionPlot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: newODFSectionPlot.html
status: Reference
---
{% raw %}
the sections a plot uses: phi2 sections against a specimen, axis angle sections between
two crystals, or the kind named (MATLAB newODFSectionPlot)

## Syntax

<div class="mx-form" markdown="1">

```python
oS = newODFSectionPlot(cs, ss)
```

Phi2 sections.

</div>

<div class="mx-form" markdown="1">

```python
oS = newODFSectionPlot(cs, cs)
```

Axis angle sections of misorientations.

</div>

<div class="mx-form" markdown="1">

```python
oS = newODFSectionPlot(cs, ss, 'phi1', sections=4)
```

Four phi1 sections.

</div>

<div class="mx-form" markdown="1">

```python
oS = newODFSectionPlot(cs, ss, 'sigma', sigma=[0, 30*degree])
```

Sigma sections at given angles.

</div>

<div class="mx-form" markdown="1">

```python
oS = newODFSectionPlot(cs, ss, 'pf', h1=Miller(1,1,1,cs), h2=Miller(1,-1,0,cs), sections=3)
```

Pole figure sections.

</div>

## Description

The kind is one of 'phi1', 'phi2', 'alpha', 'gamma' (Euler sections), 'sigma' or 'omega'
(sigmaSections), 'pf' (pfSections) and 'axisAngle' (axisAngleSections), in any case, or
sections already made, which are returned as they are. The keywords the kind takes are
passed on: sections, tol, the section angles by the name of the kind (phi2=..., sigma=...,
angles=...), maxPhi, maxAzimuth, maxOmega, h1, h2, and antipodal and volumeScaling for axis
angle sections; any other keyword is dropped, so the options of a plot can be passed whole.

## Input

| `frameA` | the first frame, the crystal frame |
| `frameB` | the second frame, a specimen frame or a second crystal frame; by default the session's specimen frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `kind` | `None` | the name of the section kind, or ODFSections; by default phi2 against a specimen and axisAngle between two crystals |

## Output

| `oS` | ODFSections, phi2Sections, sigmaSections, axisAngleSections, ... |

## See also

[phi2Sections](phi2Sections_index_py.html), [sigmaSections](sigmaSections_index_py.html), [pfSections](pfSections_index_py.html), [axisAngleSections](axisAngleSections_index_py.html), [plotSection](S2Fun.plotSection_py.html)

MATLAB's [newODFSectionPlot](newODFSectionPlot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L655">source</a></font>
{% endraw %}
