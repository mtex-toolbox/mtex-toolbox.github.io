---
title: 'The class sigmaSections'
sidebar: function_reference_sidebar
permalink: sigmaSections_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sigmaSections.html
status: Reference
---
{% raw %}
pole figure sections of the c axis split by the twist sigma of the a axis about it, the
sections MATLAB's sigma sections draw

## Syntax

```python
oS = sigmaSections(cs, ss, sections=6)
oS = sigmaSections(cs, ss, sigma=np.arange(0, 60, 10)*degree)
```

## Members

| | |
|---|---|
| [sigma](sigmaSections.sigma_py.html) | the sigma values of the sections |

## Used on

[SigmaSections](SigmaSections_py.html), [TaylorModel](TaylorModel_py.html)

MATLAB's [sigmaSections](sigmaSections.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L462">source</a></font>
{% endraw %}
