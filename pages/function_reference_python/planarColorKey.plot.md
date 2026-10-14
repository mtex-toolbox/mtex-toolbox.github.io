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

The key alone, no labels:

```python
pK.plot()
```

With the ranges and the labels of the data:

```python
h = pK.plot(v1, v2)
```

A coarser image:

```python
pK.plot(v1, v2, nHue=128)
```

Without data only the colours are drawn. With the two properties v1 and v2 the x axis
spans the range of v1 (pK.range1, else that of the data) and the y axis that of v2
(pK.range2, else from the minimum to the quantile pK.quantileCap), labelled pK.label1 and
pK.label2; a periodic first property (pK.periode) is labelled in fractions of pi, or in
degrees when its values exceed 2 pi.

## Input

| | |
|---|---|
| `pK` | planarColorKey |
| `v1` | the first property, mapped to the hue |
| `v2` | the second property, mapped to the saturation |

## Output

| | |
|---|---|
| `h` | the matplotlib image |

## Keywords

| | default | |
|---|---|---|
| `nHue` | `256` | the number of pixels of the image along the hue, MATLAB 512 |
| `nSat` | `128` | the number of pixels of the image along the saturation |

## See also

[planarColorKey.property2color](planarColorKey.property2color_py.html), [ipfColorKey](ipfColorKey_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/planarkey.py#L87">source</a></font>
{% endraw %}
