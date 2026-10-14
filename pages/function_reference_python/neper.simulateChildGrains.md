---
title: 'neper.simulateChildGrains'
sidebar: function_reference_sidebar
permalink: neper.simulateChildGrains_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: neper.simulateChildGrains.html
status: Reference
---
{% raw %}
A method of [neper](neper_index_py.html).

a microstructure after a phase transformation: Neper's parent grains cut into lamellae of
child variants; MATLAB's neper.simulateChildGrains

## Syntax

10 parent grains, habit plane {111}:

```python
grains = nep.simulateChildGrains(10, p2c, odfParent)
```

Another habit plane and width:

```python
grains = nep.simulateChildGrains(10, p2c, odfParent, habitPlane=Miller(1, 1, 0, p2c.CS), width=0.05)
```

The variants to choose from:

```python
grains = nep.simulateChildGrains(10, p2c.variants()[:12], odfParent, rng=np.random.default_rng(0))
```

The parent orientations are sampled from odfParent, and every parent grain of the
tessellation is cut into lamellae normal to its habit plane, the plane turned by the
parent orientation. Every lamella takes a child orientation of its parent, a variant
chosen at random from those of p2c, but never the variant of the lamella before it, and
is turned at random by up to 2 degree. A single relationship gives its first six
variants to choose from.

MATLAB calls it on the class, neper.simulateChildGrains; here it is a method of the
interface neper.init() returns, and MATLAB's flag 'silent' is verbose=False, the default.

## Input

| | |
|---|---|
| `numParents` | the number of parent grains |
| `p2c` | orientation, the parent to child orientation relationship, or the variants to choose from |
| `odfParent` | SO3Fun, the distribution of the parent orientations |

## Output

| | |
|---|---|
| `grains` | grain3d of the child lamellae, with meanOrientation |

## Keywords

| | default | |
|---|---|---|
| `habitPlane` | `None` | Miller of the parent, the plane the lamellae lie in, by default {111} |
| `width` | `0.015` | the width of the lamellae |
| `verbose` | `False` | print Neper's output |
| `aspectRatio` | `None` | three lengths, the aspect ratio of the parent grains along x, y and z |
| `rng` | `None` | numpy.random.Generator of the variants and the random turns |

## See also

[neper.simulateGrains](neper.simulateGrains_py.html), [neper.simulateTwinGrains](neper.simulateTwinGrains_py.html), [orientation.variants](orientation.variants_py.html), [NeperInterface](NeperInterface_py.html)

MATLAB's [neper.simulateChildGrains](neper.simulateChildGrains.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/neper.py#L220">source</a></font>
{% endraw %}
