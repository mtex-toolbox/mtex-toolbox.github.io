---
title: 'BinghamODF'
sidebar: function_reference_sidebar
permalink: BinghamODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: BinghamODF.html
status: Reference
---
{% raw %}
construct an orientation distribution from Bingham concentrations and quaternion axes

## Syntax

<div class="mx-form" markdown="1">

```python
odf = BinghamODF(20, cs)
```

Concentrated about the identity in this crystal frame.

</div>

<div class="mx-form" markdown="1">

```python
odf = BinghamODF(20, f)
```

Concentrated about an orientation fibre.

</div>

<div class="mx-form" markdown="1">

```python
odf = BinghamODF([20, 10, 0, 0], A, cs, ss)
```

Four orthogonal quaternion axes.

</div>

## Description

The density is proportional to `exp(sum_i kappa[i] * dot(q, A[:, i])**2)`, averaged
over the crystal and specimen symmetry groups. A larger concentration favours the
corresponding quaternion axis. Adding the same constant to all four concentrations leaves
the density unchanged. Missing concentrations are padded with zeros.

A fibre supplies two quaternion axes with the same concentration when kappa is scalar.
A single orientation supplies its frames and selects the identity quaternion basis; its
rotation does not set the peak position. To rotate a distribution, rotate the resulting
ODF, or provide four explicitly rotated orthogonal quaternion axes.

Additional keywords are passed to SO3FunBingham: weight sets the mean (default 1),
and antipodal imposes grain-exchange symmetry.

## Input

| `kappa` | one to four concentration parameters |
| `A` | orthogonal 4-by-4 matrix with quaternion axes as columns, four rotations or orientations, a fibre, a crystalFrame, or one orientation supplying its frames; None selects the identity basis |
| `frames` | crystal and specimen frames when they are not supplied by A; when A is a crystal direction, the first extra argument is the specimen direction of the fibre |

## Output

| `odf` | SO3FunBingham, of mean one unless a different weight is supplied |

## See also

[SO3FunBingham](SO3FunBingham_index_py.html), [calcBinghamODF](orientation.calcBinghamODF_py.html), [fibreODF](fibreODF_py.html), [unimodalODF](unimodalODF_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
BinghamODF(kappa, A=None, *frames, **kwargs)
```

</div>

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [BinghamODFs](BinghamODFs_py.html), [SO3FunDefinition](SO3FunDefinition_py.html)

MATLAB's [BinghamODF](BinghamODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L349">source</a></font>
{% endraw %}
