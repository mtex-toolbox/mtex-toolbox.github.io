---
title: 'The class ipfSpotKey'
sidebar: function_reference_sidebar
permalink: ipfSpotKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ipfSpotKey.html
status: Reference
---
{% raw %}
single spots of the inverse pole figure in their own colours

## Syntax

<div class="mx-form" markdown="1">

```python
ipfSpotKey(cs, center=Miller(1, 0, 0, cs), color=(0, 0, 1), psi=S2DeLaValleePoussinKernel(halfwidth=7.5*degree))
```

</div>

## Input

| `x` | crystalFrame, orientation, or single-phase EBSD or grain data |
| `ipfDirection` | specimen direction used for the inverse pole figure; default zvector |
| `center` | Miller directions at the spot centres |
| `color` | one RGB triplet per centre; default red for one centre |
| `psi` | spherical colour kernel; default S2DeLaValleePoussinKernel with halfwidth 10*degree |

## Members

| [center](ipfSpotKey.center_py.html) | the centres of the spots, crystal directions |
| [color](ipfSpotKey.color_py.html) | the colours of the spots, one RGB row per centre |
| [psi](ipfSpotKey.psi_py.html) | the kernel the spots fade to white with |

## Used on

[EBSDAdvancedMaps](EBSDAdvancedMaps_py.html)

MATLAB's [ipfSpotKey](ipfSpotKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L330">source</a></font>
{% endraw %}
