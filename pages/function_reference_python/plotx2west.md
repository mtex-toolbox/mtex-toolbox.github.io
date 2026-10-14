---
title: 'plotx2west'
sidebar: function_reference_sidebar
permalink: plotx2west_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plotx2west.html
status: Reference
---
{% raw %}
the default plotting convention of the session, and setting it; MATLAB's plotx2east,
plotx2north, plotx2west, plotx2south, plotzOutOfPlane and plotzIntoPlane

## Syntax

<div class="mx-form" markdown="1">

```python
plottingConvention.default('y↓→x')
```

X east, y south, z into the screen.

</div>

<div class="mx-form" markdown="1">

```python
plottingConvention.default(zvector, xvector)
```

Z out of the screen, x east.

</div>

<div class="mx-form" markdown="1">

```python
plottingConvention.default(east=xvector)
```

X east, MATLAB's plotx2east.

</div>

<div class="mx-form" markdown="1">

```python
plottingConvention.default(north=xvector)
```

X north, MATLAB's plotx2north.

</div>

<div class="mx-form" markdown="1">

```python
plottingConvention.default(intoScreen=zvector)
```

Z into the screen, MATLAB's plotzIntoPlane.

</div>

<div class="mx-form" markdown="1">

```python
plottingConvention.default(outOfScreen=zvector)
```

Z out of the screen, MATLAB's plotzOutOfPlane.

</div>

<div class="mx-form" markdown="1">

```python
plottingConvention.default(north=xvector, save=True)
```

Kept for later sessions too.

</div>

## Description

Read, plottingConvention.default is the convention of the default specimen frame, which
every plot of data in that frame follows. Called with a convention, its name or the pair
outOfScreen, east, it makes that convention the default. Called with screen directions
(east, west, north, south, outOfScreen, intoScreen) as keywords, it turns the current
default by the least rotation that puts each given reference direction there and keeps the
rest, as MATLAB's plotx2east, plotzIntoPlane and the like do. A fresh installation draws
'y↓→x'.

## Input

| `outOfScreen` | a convention, its name ('y↑→x', 'y^->x' in ASCII), or the reference direction pointing out of the screen |
| `east` | the reference direction pointing east, with outOfScreen |

## Keywords

| keyword | default | description |
|---|---|---|
| `save` | `False` | also make it the default of later sessions, stored in mtex_settings.json |

## See also

[plottingConvention](plottingConvention_index_py.html), [plottingConvention.makeDefault](plottingConvention.makeDefault_py.html), [setMTEXpref](setMTEXpref_py.html)

MATLAB's [plotx2west](plotx2west.html)
{% endraw %}
