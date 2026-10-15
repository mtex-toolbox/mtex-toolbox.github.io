---
title: 'plottingConvention.default'
sidebar: function_reference_sidebar
permalink: plottingConvention.default_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A property of [plottingConvention](plottingConvention_index_py.html).

the session default is the convention of the default specimen frame, so that everything
holding that frame follows a change of it; plottingConvention.default('y↑→x') sets it,
plottingConvention.default(north=xvector) changes one direction and keeps the others
(MATLAB's plotx2east, plotx2north, plotx2west, plotx2south, plotzOutOfPlane and plotzIntoPlane)

## Example

Display the same two specimen directions under two screen conventions. Red has positive
X and Z components; blue has positive Y and Z components. Restore the session convention afterward.


```python
import matplotlib.pyplot as plt
from mtex import plottingConvention, vector3d, plot, hold, mtexTitle

previous = plottingConvention(plottingConvention.default)
try:
    for convention in ('y↑→x', 'y←↑x'):
        plottingConvention.default(convention)
        plot(vector3d(1, 0, 1), upper=True, markerFaceColor='red', markerSize=10)
        hold(True)
        plot(vector3d(0, 1, 1), upper=True, markerFaceColor='blue', markerSize=10)
        hold(False)
        mtexTitle(convention)
finally:
    previous.makeDefault()
plt.show()
```

The data and physical reference frame stay the same; the convention determines their
placement on screen. These changes are for this session and are not saved as user preferences.

![Example output for plottingConvention.default](figures/python_reference/plottingConvention.default-01.png)

![Example output for plottingConvention.default](figures/python_reference/plottingConvention.default-02.png)


<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plottingconvention.py#L86">source</a></font>
{% endraw %}
