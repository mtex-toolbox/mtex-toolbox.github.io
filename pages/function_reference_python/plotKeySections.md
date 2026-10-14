---
title: 'plotKeySections'
sidebar: function_reference_sidebar
permalink: plotKeySections_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
plot of an orientation colour key, its colours over the sections of orientation space;
MATLAB's orientationColorKey/plot

## Syntax

<div class="mx-form" markdown="1">

```python
plot(key)
```

The colours in the default sections.

</div>

<div class="mx-form" markdown="1">

```python
plotKeySections(key, 'sigma', sections=6)
```

Six sigma sections.

</div>

<div class="mx-form" markdown="1">

```python
plotKeySections(key, resolution=5*degree, columns=3, field=True)
```

Coarser, in three columns.

</div>

## Description

Every section is filled with the colours key.orientation2color gives the orientations of
its grid; orientations the key leaves without a colour stay white. An antipodal key, one
with grain exchange symmetry, is drawn over the region that symmetry halves.

The sections follow the frames of the key, frameA and frameB. They are named by a string
('phi2', 'phi1', 'sigma', ...) or given as an ODFSections object, and the keywords of the
sections (sections, phi2, maxPhi, ...) choose them as for plotSection. A key on the
sphere, as ipfHSVKey, draws its inverse pole figure with plot(key); plotKeySections draws
it in sections too.

## Input

| `key` | an orientation colour key, as BungeColorKey, axisAngleColorKey or spotColorKey; ipfHSVKey through plotKeySections itself |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `2.5*degree` | the spacing of the grid the colours are computed on, an angle |
| `columns` | `0` | the number of columns of the sections, 0 to choose it from the figure |
| `field` | `False` | draw into every section the arrows of the reference field its coordinate is counted from |

## Output

| `h` | the list of matplotlib meshes drawn |

## See also

[orientationColorKey.orientation2color](orientationColorKey.orientation2color_py.html), [plotSection](S2Fun.plotSection_py.html), [ipfColorKey](ipfColorKey_index_py.html), [BungeColorKey](BungeColorKey_index_py.html), [EBSDOrientationPlots](EBSDOrientationPlots_py.html), [OrientationVisualizationSections](OrientationVisualizationSections_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L547">source</a></font>
{% endraw %}
