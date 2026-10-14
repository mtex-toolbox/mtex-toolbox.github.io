---
title: 'planarColorKey.plot'
sidebar: function_reference_sidebar
permalink: planarColorKey.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [planarColorKey](planarColorKey_index_py.html).

the colour key drawn as an image, hue along x and saturation along y; MATLAB's
planarColorKey.plot

## Syntax

<div class="mx-form" markdown="1">

```python
pK.plot()
```

The key alone, no labels.

</div>

<div class="mx-form" markdown="1">

```python
h = pK.plot(v1, v2)
```

With the ranges and the labels of the data.

</div>

<div class="mx-form" markdown="1">

```python
pK.plot(v1, v2, nHue=128)
```

A coarser image.

</div>

## Description

Without data only the colours are drawn. With the two properties v1 and v2 the x axis
spans the range of v1 (pK.range1, else that of the data) and the y axis that of v2
(pK.range2, else from the minimum to the quantile pK.quantileCap), labelled pK.label1 and
pK.label2; a periodic first property (pK.periode) is labelled in fractions of pi, or in
degrees when its values exceed 2 pi.

## Input

| `pK` | planarColorKey |
| `v1` | the first property, mapped to the hue |
| `v2` | the second property, mapped to the saturation |

## Keywords

| keyword | default | description |
|---|---|---|
| `nHue` | `256` | the number of pixels of the image along the hue, MATLAB 512 |
| `nSat` | `128` | the number of pixels of the image along the saturation |

## Output

| `h` | the matplotlib image |

## See also

[planarColorKey.property2color](planarColorKey.property2color_py.html), [ipfColorKey](ipfColorKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/planarkey.py#L127">source</a></font>
{% endraw %}
