---
title: 'complianceTensor.complianceTensor'
sidebar: function_reference_sidebar
permalink: complianceTensor.complianceTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: complianceTensor.complianceTensor.html
status: Reference
---
{% raw %}
the elastic compliance S = inv(C), its Voigt matrix carrying the factors of the double convention

## Syntax

<div class="mx-form" markdown="1">

```python
complianceTensor(M, *args, **kwargs)
```

</div>

## Input

| `M` | 6-by-6 compliance matrix in engineering Voigt notation, full rank-four coefficients, or another tensor |
| `args` | optional reference frame |
| `kwargs` | tensor constructor options; unit defaults to '1/GPa' and doubleConvention to True |

## Used on

[IsotropicTheory](IsotropicTheory_py.html)

MATLAB's [complianceTensor.complianceTensor](complianceTensor.complianceTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1338">source</a></font>
{% endraw %}
