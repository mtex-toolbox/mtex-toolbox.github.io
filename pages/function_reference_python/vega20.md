---
title: 'vega20'
sidebar: function_reference_sidebar
permalink: vega20_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
n colours of vega's twenty categorical ones, repeated beyond twenty, an n x 3 array;
MATLAB's vega20

## Syntax

<div class="mx-form" markdown="1">

```python
map = vega20()
```

As many as the current colour map has.

</div>

<div class="mx-form" markdown="1">

```python
map = vega20(5)
```

The first five.

</div>

## Description

The colours of matplotlib 2.0 for categorical data, matplotlib's tab20, in MATLAB's order:
the ten dark shades first, then the ten light ones.

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `None` | the number of colours; by default that of the colour map of the current MTEX figure, else of the preference defaultColorMap |

## Output

| `map` | an n x 3 array of rgb values in [0, 1] |

## See also

[ind2color](ind2color_py.html)

## Used on

[SchmidFactor](SchmidFactor_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L236">source</a></font>
{% endraw %}
