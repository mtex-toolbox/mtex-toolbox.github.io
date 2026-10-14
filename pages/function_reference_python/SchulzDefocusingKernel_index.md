---
title: 'The class SchulzDefocusingKernel'
sidebar: function_reference_sidebar
permalink: SchulzDefocusingKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the defocusing of a Bragg-Brentano goniometer (MATLAB SchulzDefocusingKernel): the
beam of width r is smeared over the receiving slit of width w at the distance d as the
sample tilts by alpha, and the measured intensity drops by the factor the kernel gives

## Syntax

```python
psi = SchulzDefocusingKernel(theta=45*degree, r=1, w=2, d=200, dtheta=0.5*degree)
psi.eval(cos(alpha))                     the factor at the tilt alpha
psi.defocusing(pf)                       the factor on the specimen directions of a pole figure
```

## Members

| | |
|---|---|
| [defocusing](SchulzDefocusingKernel.defocusing_py.html) | the correction on the specimen directions of a pole figure, one at the pole |
| [eval](SchulzDefocusingKernel.eval_py.html) | the defocusing factor at t = cos(alpha) of the tilt alpha, 1 at no tilt, infinite at 90 degrees |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L1105">source</a></font>
{% endraw %}
