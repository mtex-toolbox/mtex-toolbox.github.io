---
title: 'The class sigmaSections'
sidebar: function_reference_sidebar
permalink: sigmaSections_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sigmaSections_index.html
status: Reference
---
{% raw %}
pole figure sections of the c axis split by the twist sigma of the a axis about it, the
sections MATLAB's sigma sections draw

## Syntax

<div class="mx-form" markdown="1">

```python
oS = sigmaSections(cs, ss, sections=6)
oS = sigmaSections(cs, ss, sigma=np.arange(0, 60, 10)*degree)
```

</div>

## Input

| `frameA` | crystal reference frame |
| `frameB` | specimen reference frame; None uses the default |
| `h1` | first crystal direction; default reciprocal c axis |
| `h2` | second crystal direction, defining twist about h1; default a axis; must not be parallel to h1 |
| `sections` | section count when explicit twist angles are omitted; default 6 |
| `values` | explicit twist angles in radians |
| `tol` | angular assignment tolerance in radians; default 5*degree |
| `maxOmega` | maximum twist angle in radians; None uses the symmetry-dependent period |
| `kwargs` | twist angles may also be supplied as sigma=values |

## Members

| [sigma](sigmaSections.sigma_py.html) | the sigma values of the sections |

## Used on

[SigmaSections](SigmaSections_py.html), [TaylorModel](TaylorModel_py.html)

MATLAB's [sigmaSections_index](sigmaSections_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections/__init__.py#L610">source</a></font>
{% endraw %}
