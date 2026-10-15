---
title: 'The class phi1Sections'
sidebar: function_reference_sidebar
permalink: phi1Sections_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: phi1Sections.html
status: Reference
---
{% raw %}
sections of constant phi1 in the Bunge convention

## Syntax

<div class="mx-form" markdown="1">

```python
oS = phi1Sections(cs, ss, sections=6)
oS = phi1Sections(cs, ss, phi1=np.arange(0, 91, 15)*degree)
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
| `kwargs` | section angles may also be supplied as phi1=values |

## Members

| [phi1](phi1Sections.phi1_py.html) | the phi1 values of the sections |

## Used on

[TaylorModel](TaylorModel_py.html), [SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [phi1Sections](phi1Sections.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections/__init__.py#L340">source</a></font>
{% endraw %}
