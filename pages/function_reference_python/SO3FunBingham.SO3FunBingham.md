---
title: 'SO3FunBingham.SO3FunBingham'
sidebar: function_reference_sidebar
permalink: SO3FunBingham.SO3FunBingham_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunBingham.SO3FunBingham.html
status: Reference
---
{% raw %}
the Bingham distribution on SO(3): the density exp(q' A diag(kappa) A' q) on the quaternions,
symmetrised over the crystal and specimen frames, with four concentrations kappa and four
orthonormal quaternion axes A; BinghamODF builds it from axes, orientations or a fibre

## Syntax

<div class="mx-form" markdown="1">

```python
SO3FunBingham(kappa, A, cs, ss)
```

</div>

<div class="mx-form" markdown="1">

```python
SO3FunBingham(kappa, A, cs, cs, antipodal=True)
```

With exchange symmetry.

</div>

## Input

| `kappa` | four Bingham concentration parameters, one per quaternion axis |
| `A` | orthonormal quaternion axes as columns of a 4-by-4 matrix, or four rotations or orientations |
| `frames` | crystal and specimen frames; inherited from orientation axes when omitted |
| `weight` | mean density over SO(3); default 1 |
| `antipodal` | impose grain-exchange symmetry f(g)=f(inv(g)); default False |

## Signature

<div class="mx-form" markdown="1">

```python
SO3FunBingham(kappa, A, *frames, weight=1.0, antipodal=False)
```

</div>

MATLAB's [SO3FunBingham.SO3FunBingham](SO3FunBingham.SO3FunBingham.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L120">source</a></font>
{% endraw %}
