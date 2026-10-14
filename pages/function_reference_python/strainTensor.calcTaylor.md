---
title: 'strainTensor.calcTaylor'
sidebar: function_reference_sidebar
permalink: strainTensor.calcTaylor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: strainTensor.calcTaylor.html
status: Reference
---
{% raw %}
A method of [strainTensor](strainTensor_index_py.html).

the Taylor factor, the shears of the slip systems and the plastic spin of a strain

## Syntax

```python
strainTensor.calcTaylor(eps, sS, *args, plasticWork=False, spinSelection=None, bandwidth=32, smoothing=0.0)
```

```python
M, b, W = calcTaylor(eps, sS)                     eps in the crystal frame, one or a list of strains
M, b, W = calcTaylor(inv(ori) * eps, sS)          the strain of every orientation, one row of shears each
MFun, _, WFun = calcTaylor(eps, sS)               eps in the specimen frame: the factor as an SO3Fun and
                                                  the spin as a vector field of the orientation
```

plasticWork=True takes the work instead of the sum of the shears. The shears are the
analytic centre of the optimal face, which makes them and the spin unique and symmetric, as
MATLAB's; spinSelection 'basic' takes a vertex of the face, 'minimumNorm' the shears of least
norm on it. The spin is a spinTensor in the crystal frame, so ori.exp(-W) turns the crystal.

MATLAB's [strainTensor.calcTaylor](strainTensor.calcTaylor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/taylor.py#L317">source</a></font>
{% endraw %}
