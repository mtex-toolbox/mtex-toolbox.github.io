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

One range over every axes:

```python
mtexFig.setColorRange()
```

Each axes the range of its own data:

```python
mtexFig.setColorRange('tight')
```

The range given:

```python
mtexFig.setColorRange((0, 5))
```

## Signature

```python
mtexFigure.setColorRange(self, colorRange='equal')
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L197">source</a></font>
{% endraw %}
