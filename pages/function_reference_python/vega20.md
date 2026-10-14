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
MATLAB's vega20, matplotlib's tab20

## Syntax

<div class="mx-form" markdown="1">

```python
map = vega20()
```

The twenty colours.

</div>

<div class="mx-form" markdown="1">

```python
map = vega20(5)
```

The first five.

</div>

## Description

The colours of matplotlib 2.0 for categorical data, pairs of a dark and a light shade. MATLAB
takes as many as the current colour map has by default and interpolates between the twenty.

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `20` | the number of colours |

## Output

| `map` | an n x 3 array of rgb values in [0, 1] |

## See also

[ind2color](ind2color_py.html)

## Used on

[SchmidFactor](SchmidFactor_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L227">source</a></font>
{% endraw %}
