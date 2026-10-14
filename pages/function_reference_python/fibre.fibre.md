---
title: 'fibre.fibre'
sidebar: function_reference_sidebar
permalink: fibre.fibre_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: fibre.fibre.html
status: Reference
---
{% raw %}
a fibre in orientation space: the orientations mapping the crystal direction h onto the
specimen direction r, or the arc of them between two orientations; a list of fibres by shape

## Syntax

<div class="mx-form" markdown="1">

```python
f = fibre(h, r)
```

The orientations with ori * h = r.

</div>

<div class="mx-form" markdown="1">

```python
f = fibre(h, r, ss)
```

</div>

<div class="mx-form" markdown="1">

```python
f = fibre(o1, o2)
```

The arc from o1 to o2 about the axis between them.

</div>

<div class="mx-form" markdown="1">

```python
f = fibre(o1, h)
```

The whole fibre through o1 about h.

</div>

<div class="mx-form" markdown="1">

```python
f = fibre(o1, o2, full=True)
```

The full fibre through the arc.

</div>

## Input

| `a` | crystal direction h, or first orientation o1 |
| `b` | specimen direction r, second orientation o2, or a crystal direction for a fibre through o1 |
| `frames` | optional crystal and specimen frames |
| `full` | include the entire circular fibre rather than only the arc between two orientations; default False |

## Signature

<div class="mx-form" markdown="1">

```python
fibre(a, b, *frames, full=False)
```

</div>

## Used on

[OrientationFibre](OrientationFibre_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [BinghamODFs](BinghamODFs_py.html), [FibreODFs](FibreODFs_py.html), [ODFCharacteristics](ODFCharacteristics_py.html), [ODFPlot](ODFPlot_py.html), [ODFPoleFigure](ODFPoleFigure_py.html), [Annotations](Annotations_py.html), [PlotTypes](PlotTypes_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [RotationFibre](RotationFibre_py.html)

MATLAB's [fibre.fibre](fibre.fibre.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/fibre.py#L40">source</a></font>
{% endraw %}
