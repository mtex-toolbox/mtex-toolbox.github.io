---
title: 'neper.simulateGrains'
sidebar: function_reference_sidebar
permalink: neper.simulateGrains_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: neper.simulateGrains.html
status: Reference
---
{% raw %}
A method of [neper](neper_index_py.html).

the grains of a Neper tessellation of the domain, one grain per orientation; MATLAB's
neper.simulateGrains

## Syntax

<div class="mx-form" markdown="1">

```python
nep = neper.init()
```

The interface, its geometry and morphology set before.

</div>

<div class="mx-form" markdown="1">

```python
grains = nep.simulateGrains(100, odf)
```

100 grains of orientations sampled from an ODF.

</div>

<div class="mx-form" markdown="1">

```python
grains = nep.simulateGrains(ori)
```

One grain per orientation.

</div>

<div class="mx-form" markdown="1">

```python
grains = nep.simulateGrains(ori, aspectRatio=[2, 1, 1])
```

Grains elongated along x.

</div>

## Description

Neper tessellates the domain nep.geometry (a cube by default) into as many cells as
there are orientations, with the morphology nep.morpho optimised over nep.maxIter
iterations from the seed nep.id; the tessellation is written into nep.filePath, read
back by grain3d.load, and the grains take the orientations in their order. Neper's
output goes to neper.log in nep.filePath; the command is the preference neperCommand.

MATLAB calls it on the class, neper.simulateGrains; here it is a method of the interface
neper.init() returns, and MATLAB's flag 'silent' is verbose=False, the default.

## Input

| `ori` | orientation, one per grain, or the number of grains |
| `odf` | SO3Fun, with a number of grains: the distribution the orientations are sampled from |

## Keywords

| keyword | default | description |
|---|---|---|
| `verbose` | `False` | print Neper's output |
| `aspectRatio` | `None` | three lengths, the aspect ratio of the grains along x, y and z, added to the morphology as Neper's aspratio |

## Output

| `grains` | grain3d, with meanOrientation |

## See also

[neper.simulateTwinGrains](neper.simulateTwinGrains_py.html), [neper.simulateChildGrains](neper.simulateChildGrains_py.html), [grain3d](grain3d_index_py.html), [NeperInterface](NeperInterface_py.html)

## Used on

[NeperInterface](NeperInterface_py.html)

MATLAB's [neper.simulateGrains](neper.simulateGrains.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/neper.py#L96">source</a></font>
{% endraw %}
