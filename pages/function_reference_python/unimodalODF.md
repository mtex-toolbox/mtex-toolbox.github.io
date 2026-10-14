---
title: 'unimodalODF'
sidebar: function_reference_sidebar
permalink: unimodalODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: unimodalODF.html
status: Reference
---
{% raw %}
a unimodal ODF, radially symmetric about a modal orientation, its shape a kernel on SO(3)

## Syntax

<div class="mx-form" markdown="1">

```python
odf = unimodalODF(ori)
```

The de la Vallee Poussin kernel of halfwidth 10 degree.

</div>

<div class="mx-form" markdown="1">

```python
odf = unimodalODF(ori, halfwidth=15*degree)
```

Another halfwidth.

</div>

<div class="mx-form" markdown="1">

```python
odf = unimodalODF(rot, cs, ss)
```

The centre given as a rotation, the frames named.

</div>

<div class="mx-form" markdown="1">

```python
odf = unimodalODF(ori, psi)
```

The kernel psi, also kernel=psi.

</div>

<div class="mx-form" markdown="1">

```python
odf = unimodalODF(ori, weights=w, thinning=False)
```

One weight per centre, all kept.

</div>

## Description

The ODF is a kernel sum, SO3FunRBF, with the kernel at the modal orientations, the weights
normalised to a mean of one. Given weights, the centres of negligible weight, a hundredth
of a kernel's peak shared among the centres, are dropped unless thinning=False. Without a
centre the mode is the identity.

## Input

| `center` | orientation, the modal orientations, or a rotation with the frames following |
| `args` | crystalFrame and specimenFrame of a centre given as a rotation, and an SO3Kernel |

## Keywords

| keyword | default | description |
|---|---|---|
| `kernel` | `None` | SO3Kernel, the shape; by default the de la Vallee Poussin kernel |
| `halfwidth` | `None` | the halfwidth of the default kernel, 10 degree unless given |
| `weights` | `None` | one weight per centre |
| `thinning` | `True` | drop the centres of negligible weight (MATLAB's flag nothinning keeps them) |

## Output

| `odf` | SO3FunRBF |

## See also

[fibreODF](fibreODF_py.html), [uniformODF](uniformODF_py.html), [FourierODF](FourierODF_py.html), [BinghamODF](BinghamODF_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [RadialODFs](RadialODFs_py.html)

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [OrientationExport](OrientationExport_py.html), [OrientationGrid](OrientationGrid_py.html), [OrientationStandard](OrientationStandard_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [ClusterDemo](ClusterDemo_py.html), [OptimalKernel](OptimalKernel_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [EulerAngleSections](EulerAngleSections_py.html), [ODFCharacteristics](ODFCharacteristics_py.html), [ODFExport](ODFExport_py.html), [ODFInversePoleFigure](ODFInversePoleFigure_py.html)

MATLAB's [unimodalODF](unimodalODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L944">source</a></font>
{% endraw %}
