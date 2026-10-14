---
title: 'orientation.calcBinghamODF'
sidebar: function_reference_sidebar
permalink: orientation.calcBinghamODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.calcBinghamODF.html
status: Reference
---
{% raw %}
the Bingham distribution estimated from orientations; MATLAB's calcBinghamODF

## Syntax

<div class="mx-form" markdown="1">

```python
odf = calcBinghamODF(ori)
```

By the large concentration approximation.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcBinghamODF(ori, weights=w)
```

Weighted orientations.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcBinghamODF(ori, exact=True)
```

The concentrations matching the moments exactly.

</div>

## Description

The eigen decomposition of the quaternion tensor of the sample, projected to the
fundamental region about its mean, gives the axes, and the concentrations follow from the
eigenvalues, by the large concentration approximation kappa_i = -1/(2 lambda_i) shifted to a
smallest value of zero, or exactly by Newton on the moments.

## Input

| `ori` | orientation |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | a weight per orientation |
| `exact` | `False` | solve for the concentrations whose moments are the eigenvalues, instead of the large concentration approximation |

## Output

| `odf` | SO3FunBingham |

## See also

[BinghamODF](BinghamODF_py.html), [calcDensity](calcDensity_py.html), [orientation.mean](orientation.mean_py.html)

## Used on

[BinghamODFs](BinghamODFs_py.html)

MATLAB's [orientation.calcBinghamODF](orientation.calcBinghamODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L390">source</a></font>
{% endraw %}
