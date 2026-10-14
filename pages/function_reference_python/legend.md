---
title: 'legend'
sidebar: function_reference_sidebar
permalink: legend_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
legend(): one legend for the figure, from every artist a displayName named, on the last
chart, or beside the charts for MATLAB's outside locations (MATLAB legend('show'));
legend('a', 'b', ...) names the curves, bars and markers of the current axes in the order
they were drawn, as MATLAB's legend with labels does

## Syntax

```python
legend(*names, location='northeast', numColumns=1, fontSize=None, **kw)
```

## Used on

[OrientationFibre](OrientationFibre_py.html), [OrientationStandard](OrientationStandard_py.html), [WaveVelocities](WaveVelocities_py.html), [BoundaryPlots](BoundaryPlots_py.html), [GrainSmoothing](GrainSmoothing_py.html), [AngleDistributionFunction](AngleDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [MisorientationGrainExchangeSym](MisorientationGrainExchangeSym_py.html), [MisorientationTheory](MisorientationTheory_py.html), [SlipTransmission](SlipTransmission_py.html), [Annotations](Annotations_py.html), [CombinedPlots](CombinedPlots_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L580">source</a></font>
{% endraw %}
