---
title: 'plotRGB'
sidebar: function_reference_sidebar
permalink: plotRGB_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
three functions on the sphere drawn as the red, green and blue channels of one surface,
their values clipped to [0, 1]; the interference colours of a crystal

## Syntax

<div class="mx-form" markdown="1">

```python
plot((r, g, b), rgb=True)
```

The three channels as one picture.

</div>

<div class="mx-form" markdown="1">

```python
plotRGB((r, g, b), resolution=2*degree)
```

On a coarser grid.

</div>

<div class="mx-form" markdown="1">

```python
plotRGB((r, g, b), complete=True, upper=True)
```

The upper hemisphere, no symmetry sector.

</div>

## Description

The charts follow the region of r, its sector unless complete, and the keywords of the
spherical plots.

## Input

| `channels` | a tuple of three S2Fun, the red, green and blue values |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `0.5*degree` | the spacing of the grid the functions are evaluated on |

## Output

| `h` | the matplotlib meshes |

## See also

[spectralTransmission](refractiveIndexTensor.spectralTransmission_py.html), [plotSeismicVelocities](stiffnessTensor.plotSeismicVelocities_py.html), [plot](S1Grid.plot_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/tensorplot.py#L119">source</a></font>
{% endraw %}
