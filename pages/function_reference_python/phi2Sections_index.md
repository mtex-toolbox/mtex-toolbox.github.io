---
title: 'The class phi2Sections'
sidebar: function_reference_sidebar
permalink: phi2Sections_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
sections of constant phi2 in the Bunge convention, MTEX's default ODF sections

## Syntax

<div class="mx-form" markdown="1">

```python
oS = phi2Sections(cs, ss)
oS = phi2Sections(cs, ss, sections=6)
oS = phi2Sections(cs, ss, phi2=np.arange(0, 91, 15)*degree)
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
| `kwargs` | section angles may also be supplied as phi2=values |

## Members

| [phi2](phi2Sections.phi2_py.html) | the phi2 values of the sections |

## Used on

[EulerAngleSections](EulerAngleSections_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L311">source</a></font>
{% endraw %}
