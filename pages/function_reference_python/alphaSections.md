---
title: 'The class alphaSections'
sidebar: function_reference_sidebar
permalink: alphaSections_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: alphaSections.html
status: Reference
---
{% raw %}
sections of constant alpha in the Matthies (ZYZ) convention

## Syntax

<div class="mx-form" markdown="1">

```python
oS = alphaSections(cs, ss, sections=6)
oS = alphaSections(cs, ss, alpha=np.arange(0, 91, 15)*degree)
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
| `kwargs` | section angles may also be supplied as alpha=values |

## Members

| [alpha](alphaSections.alpha_py.html) | the alpha values of the sections |

MATLAB's [alphaSections](alphaSections.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections/__init__.py#L396">source</a></font>
{% endraw %}
