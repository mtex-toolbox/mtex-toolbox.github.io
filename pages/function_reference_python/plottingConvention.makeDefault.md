---
title: 'plottingConvention.makeDefault'
sidebar: function_reference_sidebar
permalink: plottingConvention.makeDefault_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [plottingConvention](plottingConvention_index_py.html).

makes this convention the session default, that of the default specimen frame; with
save=True also the default of every later session, stored in the user's settings file

## Syntax

```python
plottingConvention.makeDefault(self, save=False)
```

```python
plottingConvention('y↑→x').makeDefault()
plottingConvention.default('y↑→x', save=True)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plottingconvention.py#L80">source</a></font>
{% endraw %}
