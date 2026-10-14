---
title: 'S1FunHarmonic.truncate'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.truncate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

return the same circular function represented through Fourier mode L.

## Syntax

<div class="mx-form" markdown="1">

```python
lowPass = f.truncate(8)
```

</div>

## Description

Modes outside -L through L are removed. If L exceeds the current bandwidth, zero
coefficients are appended without changing the function. The input is unchanged;
requesting its current bandwidth can return the original object.

## Input

| `L` | nonnegative integer maximum mode |

## See also

[S1FunHarmonic.bandwidth](S1FunHarmonic.bandwidth_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S1FunHarmonic.truncate(self, L)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L216">source</a></font>
{% endraw %}
