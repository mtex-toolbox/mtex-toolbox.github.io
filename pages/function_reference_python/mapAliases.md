---
title: 'mapAliases'
sidebar: function_reference_sidebar
permalink: mapAliases_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the style keywords of a map plot, checked for their spelling; MATLAB's transparent is
the face alpha of a map, and the grains keep translucent, MATLAB's alpha that follows the colour

## Syntax

<div class="mx-form" markdown="1">

```python
kw = mapAliases({'transparent': 0.5})
```

{'faceAlpha': 0.5}.

</div>

<div class="mx-form" markdown="1">

```python
kw = mapAliases({'transparent': 0.5}, grains=True)
```

{'translucent': 0.5}.

</div>

## Description

A variant spelling of a keyword is refused with the one to write. The dictionary is changed
in place and returned.

## Input

| `kw` | dict, the keywords of a map plot |

## Keywords

| keyword | default | description |
|---|---|---|
| `grains` | `False` | the keywords of a plot of grains, which keep translucent |

## Output

| `kw` | the same dict, the aliases replaced |

## See also

[plotEBSD](EBSD.plot_py.html), [plotGrains](grain2d.plot_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L206">source</a></font>
{% endraw %}
