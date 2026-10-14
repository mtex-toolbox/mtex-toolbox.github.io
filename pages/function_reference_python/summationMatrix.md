---
title: 'summationMatrix'
sidebar: function_reference_sidebar
permalink: summationMatrix_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the values of the kernels at the centres at the nodes, rows the nodes, columns the centres;
MATLAB's createSummationMatrix

## Syntax

Sparse, the pairs within 3.5 halfwidths:

```python
M = summationMatrix(psi, S3G, nodes)
```

The pairs within 20 degree:

```python
M = summationMatrix(psi, S3G, nodes, epsilon=20*degree)
```

Every pair, dense:

```python
M = summationMatrix(psi, S3G, nodes, exact=True)
```

An entry is the mean of the kernel over the symmetric equivalents of the centre, as SO3FunRBF
evaluates; a fit M c = y of values y at the nodes gives the weights c of the kernels. For
centres that are orientations and a radius below pi the matrix is a sparse csr_matrix from
the radius search, which keeps the nearest equivalent within the radius only; otherwise it is
a dense array over every pair and every equivalent.

## Input

| | |
|---|---|
| `psi` | SO3Kernel |
| `centres` | orientation, the centres of the kernels, an SO3Grid |
| `nodes` | orientation, where the values are given |

## Output

| | |
|---|---|
| `M` | scipy.sparse.csr_matrix or ndarray, nodes x centres |

## Keywords

| | default | |
|---|---|---|
| `exact` | `False` | every pair and every equivalent, a dense matrix |
| `epsilon` | `None` | the radius beyond which the kernel counts as zero, by default 3.5 halfwidths |

## See also

[SO3FunRBF.interpolate](SO3FunRBF.interpolate_py.html), [mlsq](mlsq_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbfinterpolation.py#L27">source</a></font>
{% endraw %}
