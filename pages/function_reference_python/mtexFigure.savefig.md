---
title: 'mtexFigure.savefig'
sidebar: function_reference_sidebar
permalink: mtexFigure.savefig_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [mtexFigure](mtexFigure_index_py.html).

save the matplotlib figure to an image or vector-graphics file

## Syntax

<div class="mx-form" markdown="1">

```python
mtexFig.savefig('map.png', dpi=300)
mtexFig.savefig('map.pdf', bbox_inches='tight')
```

</div>

## Description

The filename extension selects the format unless format is supplied. Arguments and keywords
are passed to matplotlib Figure.savefig, including dpi, transparent and bbox_inches.
For PNG output the default compression level is 1; set pil_kwargs to override it.
Saving writes the figure's current state and does not display a window.

## Input

| `args` | filename or file object, followed by any positional Figure.savefig arguments |
| `kwargs` | matplotlib Figure.savefig options |

## See also

[mtexFigure.show](mtexFigure.show_py.html), [gcm](gcm_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
mtexFigure.savefig(self, *args, **kwargs)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L433">source</a></font>
{% endraw %}
