---
title: 'dynamicMarkerSize'
sidebar: function_reference_sidebar
permalink: dynamicMarkerSize_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the size of the markers of a plot of n points; MTEX's dynamic marker size as one rule

## Syntax

<div class="mx-form" markdown="1">

```python
s = dynamicMarkerSize(1000)
```

The size for 1000 markers.

</div>

<div class="mx-form" markdown="1">

```python
s = dynamicMarkerSize(1000, default=5)
```

Never larger than 5.

</div>

## Description

Fifty times the mean spacing of n markers on a hemisphere, sqrt(2 pi / n), never smaller
than 1.5 and never larger than the default size.

## Input

| `n` | the number of markers |

## Keywords

| keyword | default | description |
|---|---|---|
| `default` | `10` | the largest size, that of few markers |

## Output

| `s` | the marker size in points |

## See also

[plotPF](SO3Fun.plotPDF_py.html), [scatter](quaternion.scatter_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/poles.py#L111">source</a></font>
{% endraw %}
