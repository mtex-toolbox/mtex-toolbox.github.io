---
title: 'SO3FunHarmonic.truncate'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.truncate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FunHarmonic](SO3FunHarmonic_index_py.html).

cut or pad a harmonic orientation function to maximum degree L.

## Syntax

<div class="mx-form" markdown="1">

```python
lowerOrder = f.truncate(16)
```

</div>

## Description

Higher degrees are discarded when L is smaller than the current bandwidth. A larger
L adds zero coefficients and leaves the represented function unchanged. Frames,
reality and exchange-symmetry metadata are preserved.

## Input

| `L` | nonnegative integer maximum harmonic degree |

## See also

[SO3FunHarmonic.bandwidth](SO3FunHarmonic.bandwidth_py.html), [SO3FunHarmonic.power](SO3FunHarmonic.power_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3FunHarmonic.truncate(self, L)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L372">source</a></font>
{% endraw %}
