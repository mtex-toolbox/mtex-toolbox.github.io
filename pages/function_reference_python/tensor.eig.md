---
title: 'tensor.eig'
sidebar: function_reference_sidebar
permalink: tensor.eig_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.eig.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

diagonalise rank-two tensors or rank-four tensors in Voigt notation

## Syntax

<div class="mx-form" markdown="1">

```python
values, axes = T.eig()
```

</div>

## Description

Eigenvalues are returned in ascending order. For rank two, the associated eigenvectors
are antipodal vector3d axes in the tensor frame, arranged as rows after the tensor-array
dimensions. For rank four the decomposition uses the 6-by-6 Voigt matrix and returns its
numeric eigenvector matrix. Symmetric matrices use a real symmetric eigensolver.

## Output

| `values` | eigenvalues, with the eigenvalue axis last |
| `axes` | vector3d eigenvectors for rank two, numeric eigenvectors for rank four |

## See also

[tensor.eigvals](tensor.eigvals_py.html), [Voigt](tensor.Voigt_py.html), [Kelvin](Kelvin_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
tensor.eig(self)
```

</div>

MATLAB's [tensor.eig](tensor.eig.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L565">source</a></font>
{% endraw %}
