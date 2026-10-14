---
title: 'The class InvariantProjection'
sidebar: function_reference_sidebar
permalink: InvariantProjection_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
symmetry projection blocks for harmonic coefficients, stored on their nonzero index support

## Description

Usually obtained from invariantProjection(frame, bandwidth). For degree n, only harmonic
orders divisible by the group's z-axis fold can contribute. Reduced blocks store those
orders, avoiding multiplication by the known zero rows and columns. A trivial rotational
group needs no stored projection matrices.

This is a low-level representation used by the harmonic transforms. Use invariantProjection
to construct it from a reference frame rather than assembling blocks by hand.

## Input

| `fold` | integer order of the group's rotation about z |
| `blocks` | reduced projection matrices, one per harmonic degree |
| `held` | optional existing projection sharing the stored nonzero structure |

## Properties

| `fold` | retained z-axis fold |
| `blocks` | reduced projection blocks |

## See also

[invariantProjection](invariantProjection_py.html), [projectLeft](projectLeft_py.html), [projectRight](projectRight_py.html)

## Members

| [bandwidth](InvariantProjection.bandwidth_py.html) | the highest degree the held projection blocks reach |
| [isIdentity](InvariantProjection.isIdentity_py.html) | whether the projection is the identity, the group acting through the identity alone |
| [nonzeros](InvariantProjection.nonzeros_py.html) | the entries of the blocks above rounding level as flat lists over the degrees, degree n at ptr[n]:ptr[n+1], with block indices: what the compiled projection visits |
| [support](InvariantProjection.support_py.html) | the indices an r fold about z leaves at degree n, k = 0 mod r, as block indices |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/harmonics.py#L299">source</a></font>
{% endraw %}
