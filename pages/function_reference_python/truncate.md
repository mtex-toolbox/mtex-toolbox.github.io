---
title: 'truncate'
sidebar: function_reference_sidebar
permalink: truncate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
truncate(x, ...) is x.truncate(...), the method of the object passed

## Syntax

```python
truncate(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [S1FunHarmonic](S1FunHarmonic.truncate_py.html) | the function cut, or padded with zeros, to the bandwidth L |
| [S2FunHarmonic](S2FunHarmonic.truncate_py.html) | the coefficients up to degree L |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.truncate_py.html) | the field cut off, or padded with zeros, at the bandwidth L |
| [SO3FunHarmonic](SO3FunHarmonic.truncate_py.html) | the coefficient vector cut or padded to a bandwidth |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.truncate_py.html) | the field with its coefficients cut or padded to the bandwidth L |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
