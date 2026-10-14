---
title: 'The class phi2Sections'
sidebar: function_reference_sidebar
permalink: phi2Sections_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: phi2Sections.html
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

## Members

| [phi2](phi2Sections.phi2_py.html) | the phi2 values of the sections |

## Used on

[EulerAngleSections](EulerAngleSections_py.html)

MATLAB's [phi2Sections](phi2Sections.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sections.py#L297">source</a></font>
{% endraw %}
