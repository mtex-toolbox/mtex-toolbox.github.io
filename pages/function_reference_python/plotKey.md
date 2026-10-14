---
title: 'plotKey'
sidebar: function_reference_sidebar
permalink: plotKey_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a colour key drawn as the colours it gives the directions of its sector, an inverse pole
figure key as its direction key; MATLAB's directionColorKey.plot and ipfColorKey.plot

## Syntax

The key on the fundamental sector:

```python
plot(HSVDirectionKey(cs))
```

An inverse pole figure key, coarser:

```python
plot(ipfHSVKey(cs), resolution=1*degree)
```

On the whole region of the charts:

```python
plot(key, fundamentalRegion=False)
```

On the whole sphere:

```python
plot(key, complete=True)
```

The key is evaluated on the grid of every chart and drawn as an rgb surface; outside the
sector a direction takes the colour of its equivalent inside. The other keywords are those
of the spherical plots.

## Input

| | |
|---|---|
| `key` | a direction key (HSVDirectionKey, TSLDirectionKey, HKLDirectionKey, ...) or an ipfColorKey |

## Output

| | |
|---|---|
| `h` | the matplotlib meshes |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `0.5*degree` | the spacing of the grid |
| `fundamentalRegion` | `True` | draw the key's sector only; complete=True sets it False |

## See also

[ipfColorKey](ipfColorKey_index_py.html), [HSVDirectionKey](HSVDirectionKey_index_py.html), [direction2color](HKLDirectionKey.direction2color_py.html), [orientation2color](BungeColorKey.orientation2color_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L1420">source</a></font>
{% endraw %}
