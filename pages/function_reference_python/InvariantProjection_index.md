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
the same projection, held and kept in its support. P_n is nonzero only where both indices
are 0 mod r, r the order of the group's axis along z: the group contains that rotation,
whose Wigner matrix is diagonal with e^{-ik alpha}, so P = P_z P = P P_z. Only that r-th
part of a coefficient block is ever read or written. A group acting on orientations
through the identity alone (1 and -1, whose elements all have the identity as their
rotation part) projects with the identity and is held as no matrices at all

## Members

| [bandwidth](InvariantProjection.bandwidth_py.html) | the highest degree the held projection blocks reach |
| [isIdentity](InvariantProjection.isIdentity_py.html) | whether the projection is the identity, the group acting through the identity alone |
| [nonzeros](InvariantProjection.nonzeros_py.html) | the entries of the blocks above rounding level as flat lists over the degrees, degree n at ptr[n]:ptr[n+1], with block indices: what the compiled projection visits |
| [support](InvariantProjection.support_py.html) | the indices an r fold about z leaves at degree n, k = 0 mod r, as block indices |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/harmonics.py#L298">source</a></font>
{% endraw %}
