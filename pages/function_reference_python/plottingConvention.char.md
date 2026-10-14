---
title: 'plottingConvention.char'
sidebar: function_reference_sidebar
permalink: plottingConvention.char_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [plottingConvention](plottingConvention_index_py.html).

'y↑→x' when both screen axes are reference axes, the three names run together otherwise

## Syntax

<div class="mx-form" markdown="1">

```python
s = pC.char()
```

'y↑→x'.

</div>

<div class="mx-form" markdown="1">

```python
s = pC.char(utf8=False)
```

'y^->x'.

</div>

<div class="mx-form" markdown="1">

```python
s = pC.char(names=('X1', 'Y1', 'Z1'))
```

In the axis names of a file, 'Y1↑→X1'.

</div>

## Input

| `pC` | plottingConvention |

## Keywords

| keyword | default | description |
|---|---|---|
| `utf8` | `None` | arrows as Unicode characters, or as ASCII ('^', 'v', '->', '<-'); by default the preference 'UTF8Output' |
| `names` | `('x', 'y', 'z')` | the names of the three reference axes |

## Output

| `s` | str |

## See also

[conventionNames](conventionNames_py.html), [plottingConvention.isPictogram](plottingConvention.isPictogram_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plottingconvention.py#L186">source</a></font>
{% endraw %}
