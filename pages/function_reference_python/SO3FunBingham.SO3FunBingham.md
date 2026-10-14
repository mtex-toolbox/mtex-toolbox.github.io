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

```python
SO3FunBingham(kappa, A, cs, ss)
SO3FunBingham(kappa, A, cs, cs, antipodal=True)      with exchange symmetry
```

## Signature

```python
SO3FunBingham(kappa, A, *frames, weight=1.0, antipodal=False)
```

MATLAB's [SO3FunBingham.SO3FunBingham](SO3FunBingham.SO3FunBingham.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/bingham.py#L120">source</a></font>
{% endraw %}
