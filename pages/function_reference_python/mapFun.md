---
title: 'mapFun'
sidebar: function_reference_sidebar
permalink: mapFun_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the harmonic function of op applied pointwise to f and gs, by quadrature at the sum of their
bandwidths, capped by the preference, or at the given bandwidth

## Syntax

```python
mapFun(op, f, *gs, bandwidth=None)
```

```python
mapFun(np.exp, f)
mapFun(np.maximum, f, g, bandwidth=64)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/funops.py#L372">source</a></font>
{% endraw %}
