---
title: 'The class stressTensor'
sidebar: function_reference_sidebar
permalink: stressTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stressTensor_index.html
status: Reference
---
{% raw %}
a rank two symmetric stress tensor; stressTensor.uniaxial(v, sigma) the uniaxial tension along v

```python
sigma = stressTensor(M)
sigma = stressTensor.uniaxial(vector3d.X)
```

## Members

| | |
|---|---|
| [calcShearStress](stressTensor.calcShearStress_py.html) | the shear stress the stress tensor resolves on each slip system, and the index of the system carrying the largest one |
| [deviatoricStress](stressTensor.deviatoricStress_py.html) | the deviatoric part, the tensor less a third of its trace on the diagonal |
| [equivalentStress](stressTensor.equivalentStress_py.html) | the von Mises equivalent stress, sqrt(3/2 s:s) of the deviatoric stress s |
| [meanStress](stressTensor.meanStress_py.html) | the mean stress, a third of the trace of the stress tensor |
| [normalize](stressTensor.normalize_py.html) | the tensors divided by their Frobenius norms |
| [stressTensor](stressTensor.stressTensor_py.html) | a rank two symmetric stress tensor |
| [uniaxial](stressTensor.uniaxial_py.html) | the stress of a uniaxial tension along v |

## Used on

[IsotropicTheory](IsotropicTheory_py.html)

MATLAB's [stressTensor_index](stressTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1042">source</a></font>
{% endraw %}
