---
title: 'plotx2east'
sidebar: function_reference_sidebar
permalink: plotx2east_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plotx2east.html
status: Reference
---
{% raw %}
the default plotting convention of the session, and setting it; MATLAB's plotx2east,
plotx2north, plotx2west, plotx2south, plotzOutOfPlane and plotzIntoPlane

## Syntax

X east, y south, z into the screen:

```python
plottingConvention.default('y↓→x')
```

Z out of the screen, x east:

```python
plottingConvention.default(zvector, xvector)
```

X east, MATLAB's plotx2east:

```python
plottingConvention.default(east=xvector)
```

X north, MATLAB's plotx2north:

```python
plottingConvention.default(north=xvector)
```

Z into the screen, MATLAB's plotzIntoPlane:

```python
plottingConvention.default(intoScreen=zvector)
```

Z out of the screen, MATLAB's plotzOutOfPlane:

```python
plottingConvention.default(outOfScreen=zvector)
```

Kept for later sessions too:

```python
plottingConvention.default(north=xvector, save=True)
```

Read, plottingConvention.default is the convention of the default specimen frame, which
every plot of data in that frame follows. Called with a convention, its name or the pair
outOfScreen, east, it makes that convention the default. Called with screen directions
(east, west, north, south, outOfScreen, intoScreen) as keywords, it turns the current
default by the least rotation that puts each given reference direction there and keeps the
rest, as MATLAB's plotx2east, plotzIntoPlane and the like do. A fresh installation draws
'y↓→x'.

## Input

| | |
|---|---|
| `outOfScreen` | a convention, its name ('y↑→x', 'y^->x' in ASCII), or the reference direction pointing out of the screen |
| `east` | the reference direction pointing east, with outOfScreen |

## Keywords

| | default | |
|---|---|---|
| `save` | `False` | also make it the default of later sessions, stored in mtex_settings.json |

## See also

[plottingConvention](plottingConvention_index_py.html), [plottingConvention.makeDefault](plottingConvention.makeDefault_py.html), [setMTEXpref](setMTEXpref_py.html)

MATLAB's [plotx2east](plotx2east.html)
{% endraw %}
