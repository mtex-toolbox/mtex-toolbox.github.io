---
title: 'The class ipfHSVKey'
sidebar: function_reference_sidebar
permalink: ipfHSVKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ipfHSVKey.html
status: Reference
---
{% raw %}
the MTEX default inverse pole figure key, white at the centre of the sector

## Syntax

<div class="mx-form" markdown="1">

```python
ipfHSVKey(cs), ipfHSVKey(cs, maxAngle=7.5*degree, whiteCenter=v, ipfDirection=xvector)
```

</div>

## Members

| [maxAngle](ipfHSVKey.maxAngle_py.html) | the sharpness and the white centre live on the direction key and are set through it |
| [whiteCenter](ipfHSVKey.whiteCenter_py.html) | the white centre of the key, a crystal direction |

## Used on

[QuasiCrystals](QuasiCrystals_py.html), [EBSDIPFMap](EBSDIPFMap_py.html), [EBSDPerceptualKey](EBSDPerceptualKey_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [GND](GND_py.html)

MATLAB's [ipfHSVKey](ipfHSVKey.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L166">source</a></font>
{% endraw %}
