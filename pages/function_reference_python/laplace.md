---
title: 'laplace'
sidebar: function_reference_sidebar
permalink: laplace_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
laplace(x, ...) is x.laplace(...), the method of the object passed

## Syntax

```python
laplace(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [S2FunHarmonic](S2FunHarmonic.laplace_py.html) | the Laplace-Beltrami operator applied to the function, the degree l scaled by -l(l+1) |
| [SO3FunHarmonic](SO3FunHarmonic.laplace_py.html) | the Laplace-Beltrami operator applied to the function, degree n scaled by -n(n+1) |

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
