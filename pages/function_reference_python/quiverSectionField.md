---
title: 'quiverSectionField'
sidebar: function_reference_sidebar
permalink: quiverSectionField_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
plot of a vector field on SO(3) as arrows in the sections of orientation space

## Syntax

<div class="mx-form" markdown="1">

```python
plot(G)
```

Arrows in phi2 sections, G = odf.grad().

</div>

<div class="mx-form" markdown="1">

```python
quiverSectionField(G, 'phi1')
```

In phi1 sections.

</div>

<div class="mx-form" markdown="1">

```python
quiverSectionField(G, resolution=15*degree, color='b')
```

A coarser grid of blue arrows.

</div>

## Description

At the nodes of a grid in every section the field is evaluated, and the arrow shows where
a small turn about the field's axis moves the orientation within the section, its length
the size of the field. The arrows go into the sections of a held figure, the sections given
as an ODFSections object or named by a string, or new phi2 sections; Euler angle and pole
figure sections (sigma) are drawn, the others refused.

## Input

| `G` | SO3VectorField, a vector field on SO(3), as the gradient of an ODF |

## Keywords

| keyword | default | description |
|---|---|---|
| `color` | `'k'` | the colour of the arrows |
| `lineWidth` | `1.0` | the width of the arrows |
| `resolution` | `10*degree` | the spacing of the grid of arrows in every section, an angle |

## See also

[SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html), [plotSection](S2Fun.plotSection_py.html), [quiverSection](S2Fun.quiverSection_py.html), [SO3FunVectorField](SO3FunVectorField_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L379">source</a></font>
{% endraw %}
