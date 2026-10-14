---
title: 'slipSystem.slipSystem'
sidebar: function_reference_sidebar
permalink: slipSystem.slipSystem_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: slipSystem.slipSystem.html
status: Reference
---
{% raw %}
slip systems: slip directions b with plane normals n orthogonal to them and a critical resolved
shear stress each, in crystal coordinates while Miller indexed, in specimen coordinates once
an orientation has rotated them

## Syntax

```python
sS = slipSystem(b, n)
sS = slipSystem(b, n, CRSS)
sS = slipSystem.fcc(cs)
```

## Signature

```python
slipSystem(b, n, CRSS=1)
```

## Used on

[SingleSlipModel](SingleSlipModel_py.html), [SlipSystems](SlipSystems_py.html)

MATLAB's [slipSystem.slipSystem](slipSystem.slipSystem.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L69">source</a></font>
{% endraw %}
