---
title: 'plottingConvention.makeDefault'
sidebar: function_reference_sidebar
permalink: plottingConvention.makeDefault_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [plottingConvention](plottingConvention_index_py.html).

makes this convention the session default, that of the default specimen frame; with
save=True also the default of every later session, stored in the user's settings file

## Syntax

<div class="mx-form" markdown="1">

```python
plottingConvention('y↑→x').makeDefault()
```

For this session.

</div>

<div class="mx-form" markdown="1">

```python
plottingConvention('y↑→x').makeDefault(save=True)
```

For every later session too.

</div>

<div class="mx-form" markdown="1">

```python
plottingConvention.default('y↑→x', save=True)
```

The same.

</div>

## Input

| `pC` | plottingConvention |

## Keywords

| keyword | default | description |
|---|---|---|
| `save` | `False` | store the convention in mtex_settings.json as well |

## See also

[plottingConvention.default](plotx2east_py.html), [setMTEXpref](setMTEXpref_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plottingconvention.py#L94">source</a></font>
{% endraw %}
