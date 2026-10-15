---
title: 'The class gammaSections'
sidebar: function_reference_sidebar
permalink: gammaSections_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: gammaSections.html
status: Reference
---
{% raw %}
sections of constant gamma in the Matthies (ZYZ) convention

## Syntax

<div class="mx-form" markdown="1">

```python
oS = gammaSections(cs, ss, sections=6)
oS = gammaSections(cs, ss, gamma=np.arange(0, 91, 15)*degree)
```

</div>

## Input

| `frameA` | crystal reference frame |
| `frameB` | specimen reference frame; None uses the default |
| `sections` | number of sections when explicit angle values are omitted; default 6 |
| `values` | explicit section angles in radians, overriding the section count |
| `tol` | maximum angular assignment tolerance in radians; default 5*degree |
| `maxPhi` | upper limit of the middle Euler angle in radians; None uses the symmetry-dependent limit |
| `maxAzimuth` | upper limit of the in-section azimuth in radians; None uses its symmetry-dependent limit |
| `kwargs` | section angles may also be supplied as gamma=values |

## Members

| [gamma](gammaSections.gamma_py.html) | the gamma values of the sections |

MATLAB's [gammaSections](gammaSections.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections/__init__.py#L368">source</a></font>
{% endraw %}
