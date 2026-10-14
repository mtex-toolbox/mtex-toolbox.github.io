---
title: 'axis'
sidebar: function_reference_sidebar
permalink: axis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the axis of a rotation or misorientation.

## Syntax

<div class="mx-form" markdown="1">

```python
a = axis(rot)
```

</div>

## Description

For an MTEX object, axis(x, ...) calls x.axis(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
axis(x, *args, **kwargs)
```

</div>

## Methods it calls

| [orientation](orientation.axis_py.html) | the rotational axis of a misorientation, an orientation or the misorientation between two orientations |
| [orthogonalTransform](orthogonalTransform.axis_py.html) | the rotational axis of the rotational part |
| [quaternion](quaternion.axis_py.html) | return a unit vector along the rotation axis of each quaternion |

## Used on

[BoundaryMisorientations](BoundaryMisorientations_py.html), [BoundaryPlots](BoundaryPlots_py.html), [BoundaryProperties](BoundaryProperties_py.html), [CSLBoundaries](CSLBoundaries_py.html), [TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html), [TwinningBoundaries](TwinningBoundaries_py.html), [AxisDistributionFunction](AxisDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [MisorientationGrainExchangeSym](MisorientationGrainExchangeSym_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
