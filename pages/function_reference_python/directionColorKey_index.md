---
title: 'The class directionColorKey'
sidebar: function_reference_sidebar
permalink: directionColorKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: directionColorKey_index.html
status: Reference
---
{% raw %}
base class for assigning colours to directions with crystal symmetry

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = key.direction2color(h)
key.plot()
```

</div>

## Description

A concrete direction key maps symmetry-equivalent directions to the same colour. Colouring
returns an array of shape h.shape + (3,) with RGB channels in [0, 1]. Plot the key alongside
a direction or orientation map to show what its colours mean. Use HSVDirectionKey,
TSLDirectionKey, HKLDirectionKey or spotDirectionKey to choose the colouring rule.

## Input

| `CS` | referenceFrame or symmetry group defining equivalent directions |

## Properties

| `CS` | frame or symmetry supplied to the key |
| `sym` | symmetry group used when folding directions |
| `sR` | fundamental spherical sector used for colouring |

## See also

[HSVDirectionKey](HSVDirectionKey_index_py.html), [TSLDirectionKey](TSLDirectionKey_index_py.html), [HKLDirectionKey](HKLDirectionKey_index_py.html), [ipfColorKey](ipfColorKey_index_py.html)

## Members

| [direction2color](directionColorKey.direction2color_py.html) | the colours of directions, an (..., 3) array in [0, 1] |
| [keySector](directionColorKey.keySector_py.html) | a sector the key is drawn over |
| [plot](directionColorKey.plot_py.html) | the key drawn on its sector, or with complete=True over the whole sphere |

MATLAB's [directionColorKey_index](directionColorKey_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/directionkeys.py#L264">source</a></font>
{% endraw %}
