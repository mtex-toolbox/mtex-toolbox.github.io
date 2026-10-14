---
title: 'SO3FunHarmonic.plotSection'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.plotSection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.plotSection.html
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9)

## Syntax

```python
SO3FunHarmonic.plotSection(x, *args, **kw)
```

An SO3Fun or a list of orientations sliced into sections. Without a section object the
default is the phi2 sections against a specimen frame and the axis angle sections between
two crystals, as in MTEX; a string picks another family ('phi1', 'phi2', 'alpha',
'gamma', 'sigma', 'pf', 'axisAngle') and the keywords of the family name its sections.

MATLAB's [SO3FunHarmonic.plotSection](SO3FunHarmonic.plotSection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L151">source</a></font>
{% endraw %}
