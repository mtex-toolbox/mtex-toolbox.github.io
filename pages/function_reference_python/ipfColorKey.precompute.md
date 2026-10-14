---
title: 'ipfColorKey.precompute'
sidebar: function_reference_sidebar
permalink: ipfColorKey.precompute_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [ipfColorKey](ipfColorKey_index_py.html).

the direction key evaluated once on a grid of the whole sphere, so that the colours of
many orientations are cheap; MATLAB's precompute

## Syntax

<div class="mx-form" markdown="1">

```python
ipfKey.precompute()
```

The grid at half a degree.

</div>

<div class="mx-form" markdown="1">

```python
ipfKey.precompute(resolution=1*degree)
```

A coarser grid.

</div>

## Description

The colours are then read off the node nearest each crystal direction without folding it
into the sector. An unchanged HSV key takes the grid its crystal frame keeps for the
session, any other key a grid of its own, rebuilt when the key has changed since.
orientation2color calls this itself from 100000 orientations on, where the grid pays for
itself.

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `None` | the spacing of the grid; half a degree by default |

## Output

| `ipfKey` | the key itself |

## See also

[ipfColorKey.orientation2color](ipfColorKey.orientation2color_py.html), [colorGrid](colorGrid_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L124">source</a></font>
{% endraw %}
