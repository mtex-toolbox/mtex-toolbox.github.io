---
title: 'SO3Fun.plotSection'
sidebar: function_reference_sidebar
permalink: SO3Fun.plotSection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.plotSection.html
status: Reference
---
{% raw %}
plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9)

## Syntax

<div class="mx-form" markdown="1">

```python
plot(x, *args, **kw)
```

</div>

## Description

An SO3Fun or a list of orientations sliced into sections. Without a section object the
default is the phi2 sections against a specimen frame and the axis angle sections between
two crystals, as in MTEX; a string picks another family ('phi1', 'phi2', 'alpha',
'gamma', 'sigma', 'pf', 'axisAngle') and the keywords of the family name its sections.

MATLAB's [SO3Fun.plotSection](SO3Fun.plotSection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sectionplot.py#L151">source</a></font>
{% endraw %}
