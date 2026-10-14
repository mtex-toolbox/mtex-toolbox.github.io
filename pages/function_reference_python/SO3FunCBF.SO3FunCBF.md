---
title: 'SO3FunCBF.SO3FunCBF'
sidebar: function_reference_sidebar
permalink: SO3FunCBF.SO3FunCBF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunCBF.SO3FunCBF.html
status: Reference
---
{% raw %}
a fibre ODF: a sum over fibres h || r of a kernel on the sphere of the angle between g h and r

## Syntax

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunCBF(h, r)
```

The fibre h || r, a 10 degree kernel.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunCBF(h, r, weights, psi)
```

Several fibres, weighted, the kernel psi.

</div>

<div class="mx-form" markdown="1">

```python
SO3F = SO3FunCBF(f, halfwidth=10*degree)
```

From a fibre f.

</div>

## Description

The function of the orientation g is sum_i w_i psi(g h_i . r_i), every fibre taken with all
its symmetrically equivalent fibres; it is constant along each fibre. The crystal frame is
that of h, the specimen frame that of r or SS. The weights default to equal ones giving a
mean of one. fibreODF builds one with the weights normalised.

## Input

| `h` | Miller or vector3d, the crystal directions, or a fibre |
| `r` | vector3d, the specimen directions, one per crystal direction |
| `weights` | one weight per fibre; by default a mean of one |
| `psi` | S2Kernel; by default the de la Vallee Poussin kernel |

## Keywords

| keyword | default | description |
|---|---|---|
| `SS` | `None` | the specimen frame, when r has none |
| `halfwidth` | `None` | the halfwidth of the default kernel, 10 degree unless given |

## Output

| `SO3F` | SO3FunCBF |

## See also

[fibreODF](fibreODF_py.html), [fibre](fibre_index_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [SO3FunCBF.radon](SO3FunCBF.radon_py.html), [FibreODFs](FibreODFs_py.html)

## Used on

[SO3FunDefinition](SO3FunDefinition_py.html)

MATLAB's [SO3FunCBF.SO3FunCBF](SO3FunCBF.SO3FunCBF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbf.py#L590">source</a></font>
{% endraw %}
