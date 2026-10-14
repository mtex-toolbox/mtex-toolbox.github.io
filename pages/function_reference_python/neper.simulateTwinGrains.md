---
title: 'neper.simulateTwinGrains'
sidebar: function_reference_sidebar
permalink: neper.simulateTwinGrains_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: neper.simulateTwinGrains.html
status: Reference
---
{% raw %}
A method of [neper](neper_index_py.html).

a microstructure of twinned grains: Neper's grains cut into lamellae, every second
lamella in twin orientation; MATLAB's neper.simulateTwinGrains

## Syntax

100 twinned grains:

```python
grains = nep.simulateTwinGrains(100, mori, odf, bndA)
```

Lamellae of width 0.05:

```python
grains = nep.simulateTwinGrains(100, mori, odf, bndA, width=0.05)
```

The same random turns every run:

```python
grains = nep.simulateTwinGrains(100, mori, odf, bndA, rng=np.random.default_rng(0))
```

The orientations of the host grains are sampled from odf, and every host gets a
lamella normal, a crystal direction sampled from bndA turned by the host's orientation.
Neper tessellates the domain into numGrains cells and cuts every cell into lamellae of
the given width normal to its direction. The lamellae take their host's orientation and
every second one the twin orientation, the host's orientation times mori; every lamella
is turned at random by up to 2 degree.

MATLAB calls it on the class, neper.simulateTwinGrains; here it is a method of the
interface neper.init() returns, and MATLAB's flag 'silent' is verbose=False, the default.

## Input

| | |
|---|---|
| `numGrains` | the number of host grains |
| `mori` | orientation, the twin misorientation from the host to the twin |
| `odf` | SO3Fun, the distribution of the host orientations |
| `bndA` | S2Fun on crystal directions, the distribution of the lamella normals |

## Output

| | |
|---|---|
| `grains` | grain3d, every lamella one grain, with meanOrientation |

## Keywords

| | default | |
|---|---|---|
| `width` | `None` | the width of the lamellae, by default a quarter of the edge of a cube of the mean grain volume of a cube(...) geometry |
| `verbose` | `False` | print Neper's output |
| `aspectRatio` | `None` | three lengths, the aspect ratio of the host grains along x, y and z |
| `rng` | `None` | numpy.random.Generator of the random turns of the lamellae |

## See also

[neper.simulateGrains](neper.simulateGrains_py.html), [neper.simulateChildGrains](neper.simulateChildGrains_py.html), [NeperInterface](NeperInterface_py.html)

MATLAB's [neper.simulateTwinGrains](neper.simulateTwinGrains.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/neper.py#L168">source</a></font>
{% endraw %}
