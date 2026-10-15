---
title: 'findByLocation'
sidebar: function_reference_sidebar
permalink: findByLocation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
locate map measurements or grains at specified spatial positions.

## Syntax

<div class="mx-form" markdown="1">

```python
measurements = findByLocation(ebsd, pos)
```

</div>

## Description

For an MTEX object, findByLocation(x, ...) calls x.findByLocation(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Example

Find the nearest measurement to a position and every measurement within a specified
radius. The small sample is downloaded and cached on first use.


```python
import numpy as np
from mtex import mtexdata, findByLocation

ebsd = mtexdata('small', verbose=False)['Forsterite']
query = np.array([np.mean(ebsd.x), np.mean(ebsd.y)])
nearest = findByLocation(ebsd, query)
nearby = findByLocation(ebsd, query, radius=30)
print('Query (um):', np.round(query, 2))
print('Nearest position (um):', np.round(nearest.pos.data.reshape(-1, 3)[0, :2], 2))
print('Measurements within 30 um:', nearby.size)
```

The result is an EBSD selection. Without radius the nearest measurement is returned even
when the query is outside the scan; specify a radius when distance should limit the selection.

```text
Query (um): [34329.76  5797.87]
Nearest position (um): [34350.  5800.]
Measurements within 30 um: 2
```


## Signature

<div class="mx-form" markdown="1">

```python
findByLocation(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [EBSD3](EBSD3.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [grain2d](grain2d.findByLocation_py.html) | the positions of the outlines a point lies in the position of the outline holding each point, -1 for a point in none |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
