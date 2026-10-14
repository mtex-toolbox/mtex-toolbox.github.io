---
title: 'polarAxes'
sidebar: function_reference_sidebar
permalink: polarAxes_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the polar axes a polar plot draws into

## Syntax

<div class="mx-form" markdown="1">

```python
ax = polarAxes()
```

The next polar axes.

</div>

<div class="mx-form" markdown="1">

```python
ax = polarAxes(ax)
```

The axes given.

</div>

## Description

In this order: the parent given, a polar axes the user made with plt.subplot, the last
axes of a held figure when it is polar, the axes nextAxis prepared turned polar, or a new
axes in a new figure. MATLAB's polar plots take their axes with the keyword parent, which
is what the polar plots of the port pass here.

## Input

| `parent` | a matplotlib axes to draw into |

## Output

| `ax` | the matplotlib polar axes |

## See also

[setView](setView_py.html), [histogram](SO3Fun.hist_py.html), [nextAxis](nextAxis_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
polarAxes(parent=None)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polarplot.py#L36">source</a></font>
{% endraw %}
