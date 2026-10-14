---
title: 'supportCosine'
sidebar: function_reference_sidebar
permalink: supportCosine_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the cosine of the half angle beyond which the kernel stays below tol of its peak, in
closed form for the families with one and found by a scan otherwise; a kernel that never
drops that far is summed in full

## Syntax

Where psi falls below 1e-9 of psi(1):

```python
c = supportCosine(psi)
```

A wider cut, a smaller support:

```python
c = supportCosine(psi, tol=1e-4)
```

The de la Vallee Poussin and von Mises-Fisher kernels have it in closed form; any other
kernel is scanned on a grid of 0.5 degree in the rotation angle for the first angle from
which every value stays below tol times the peak. The kernel sums of SO3FunRBF evaluate
only the centres whose cosine to the query exceeds it.

## Input

| | |
|---|---|
| `psi` | SO3Kernel |

## Output

| | |
|---|---|
| `c` | the cosine cos(omega/2) of the support's radius, -1 when the kernel never drops below |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-09` | the bound relative to the value at the identity |

## See also

[SO3FunRBF](SO3FunRBF_index_py.html), SO3Kernel.halfwidth

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L51">source</a></font>
{% endraw %}
