---
title: 'uniformODF'
sidebar: function_reference_sidebar
permalink: uniformODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: uniformODF.html
status: Reference
---
{% raw %}
the uniform ODF, constant one, between a crystal and a specimen frame; MATLAB's uniformODF

## Syntax

<div class="mx-form" markdown="1">

```python
odf = uniformODF(cs)
```

The specimen frame the default one.

</div>

<div class="mx-form" markdown="1">

```python
odf = uniformODF(cs, ss)
```

Between two frames.

</div>

<div class="mx-form" markdown="1">

```python
mdf = uniformODF(cs, cs, antipodal=True)
```

A uniform misorientation distribution.

</div>

## Description

The result is an SO3FunRBF without centres whose constant part is one. Without a frame the
crystal frame has the point group 1.

## Input

| `cs, ss` | crystalFrame, specimenFrame (or a second crystalFrame) |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | the function symmetric under g -> g^-1, as a misorientation distribution of one phase |

## Output

| `odf` | SO3FunRBF |

## See also

[unimodalODF](unimodalODF_py.html), [fibreODF](fibreODF_py.html), [SO3FunRBF](SO3FunRBF_index_py.html)

## Used on

[IsotropicTheory](IsotropicTheory_py.html), [WaveVelocities](WaveVelocities_py.html), [OptimalKernel](OptimalKernel_py.html), [ODFComponents](ODFComponents_py.html), [ODFExport](ODFExport_py.html), [ODFModeling](ODFModeling_py.html), [RadialODFs](RadialODFs_py.html), [RandomSampling](RandomSampling_py.html), [SingleSlipModel](SingleSlipModel_py.html), [ColorMaps](ColorMaps_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html)

MATLAB's [uniformODF](uniformODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L916">source</a></font>
{% endraw %}
