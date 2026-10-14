---
title: 'The class SchulzDefocusingKernel'
sidebar: function_reference_sidebar
permalink: SchulzDefocusingKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SchulzDefocusingKernel.html
status: Reference
---
{% raw %}
model the intensity correction for defocusing in a tilted Bragg–Brentano measurement

## Syntax

<div class="mx-form" markdown="1">

```python
psi = SchulzDefocusingKernel(theta=45*degree, r=1, w=2, d=200, dtheta=0.5*degree)
factor = psi.eval(np.cos(alpha))
factors = psi.defocusing(pf)
```

</div>

## Description

Tilting the specimen spreads the diffracted beam relative to the receiving slit. The
returned correction factor is one at zero tilt and increases as intensity is lost;
it is infinite at tilts of 90 degrees or greater. Evaluation takes the cosine of the
tilt angle, rather than the angle itself. The defocusing method evaluates the factor
at the specimen directions of a PoleFigure.

## Input

| `mu_t` | absorption parameter retained for compatibility; the current defocusing formula does not use it |
| `theta` | Bragg angle in radians; default 45*degree |
| `r` | beam width parameter; default 1 |
| `w` | receiving-slit width parameter; default 2 |
| `d` | specimen-to-slit distance, in the same length unit as r; default 200 |
| `dtheta` | angular broadening parameter in radians; default 0.5*degree |

## Output

| `psi` | SchulzDefocusingKernel |

## See also

[PoleFigure.correct](PoleFigure.correct_py.html), [SchulzDefocusingKernel.eval](SchulzDefocusingKernel.eval_py.html), [SchulzDefocusingKernel.defocusing](SchulzDefocusingKernel.defocusing_py.html)

## Members

| [defocusing](SchulzDefocusingKernel.defocusing_py.html) | the correction on the specimen directions of a pole figure, one at the pole |
| [eval](SchulzDefocusingKernel.eval_py.html) | the defocusing factor at t = cos(alpha) of the tilt alpha, 1 at no tilt, infinite at 90 degrees |

MATLAB's [SchulzDefocusingKernel](SchulzDefocusingKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L1174">source</a></font>
{% endraw %}
