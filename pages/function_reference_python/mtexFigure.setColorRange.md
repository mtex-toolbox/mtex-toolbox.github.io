---
title: 'mtexFigure.setColorRange'
sidebar: function_reference_sidebar
permalink: mtexFigure.setColorRange_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [mtexFigure](mtexFigure_index_py.html).

one colour range over every axes ('equal'), each axes its own ('tight'), or one given
as (lo, hi)

## Syntax

```python
mtexFigure.setColorRange(self, colorRange='equal')
```

```python
mtexFig.setColorRange()             # one range over every axes
mtexFig.setColorRange('tight')      # each axes the range of its own data
mtexFig.setColorRange((0, 5))       # the range given
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L169">source</a></font>
{% endraw %}
