---
title: 'slipSystem.SchmidFactor'
sidebar: function_reference_sidebar
permalink: slipSystem.SchmidFactor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: slipSystem.SchmidFactor.html
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

the Schmid factor of the systems: under a stress tensor the shear it resolves on them,
for tension directions cos(phi) cos(lambda), without a load the functions of the tension
direction on the sphere; relative=True divides by the critical resolved shear stress

## Syntax

```python
slipSystem.SchmidFactor(self, sigma=None, relative=False)
```

```python
sS.SchmidFactor(v)
sS.SchmidFactor(sigma)
sS.SchmidFactor()
```

## Used on

[SachsModel](SachsModel_py.html), [SchmidFactor](SchmidFactor_py.html), [SlipTransmission](SlipTransmission_py.html), [TwinningTutorial](TwinningTutorial_py.html)

MATLAB's [slipSystem.SchmidFactor](slipSystem.SchmidFactor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L279">source</a></font>
{% endraw %}
