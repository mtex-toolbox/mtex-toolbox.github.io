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
a legend: of every artist a displayName named, or naming the curves of the current axes

## Syntax

A legend of every displayName of the figure:

```python
legend()
```

Names the curves in the order they were drawn:

```python
legend('first', 'second')
```

Another place, two columns:

```python
legend(location='southwest', numColumns=2)
```

Beside the charts, outside the axes:

```python
legend(location='northoutside')
```

Removes the legends:

```python
legend('off')
```

Without names the legend collects every artist of the figure that a displayName (a
label) named, each name once, MATLAB's legend('show'); with names it names the bars,
curves and markers of the current axes in the order they were drawn, as MATLAB's legend
with labels does. A new legend replaces those the figure has. It goes into the last axes,
or for a location ending in 'outside' beside the charts, the figure widened when it would
not fit. Every entry gets a marker of the same size. Other keywords go to matplotlib's
legend.

## Input

| | |
|---|---|
| `names` | str, the names of the curves; 'off' removes the legends |

## Output

| | |
|---|---|
| `leg` | the matplotlib legend, None for 'off' |

## Keywords

| | default | |
|---|---|---|
| `location` | `'northeast'` | MATLAB's compass names, 'north', 'northeast', ..., 'best', or with 'outside' appended to place it beside the charts |
| `numColumns` | `1` | the number of columns of the legend |
| `fontSize` | `None` | the font size; by default the preference FontSize |

## See also

[Legends](Legends_py.html), [Annotations](Annotations_py.html)

## Used on

[OrientationFibre](OrientationFibre_py.html), [OrientationStandard](OrientationStandard_py.html), [WaveVelocities](WaveVelocities_py.html), [BoundaryPlots](BoundaryPlots_py.html), [GrainSmoothing](GrainSmoothing_py.html), [AngleDistributionFunction](AngleDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [MisorientationGrainExchangeSym](MisorientationGrainExchangeSym_py.html), [MisorientationTheory](MisorientationTheory_py.html), [SlipTransmission](SlipTransmission_py.html), [Annotations](Annotations_py.html), [CombinedPlots](CombinedPlots_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L634">source</a></font>
{% endraw %}
