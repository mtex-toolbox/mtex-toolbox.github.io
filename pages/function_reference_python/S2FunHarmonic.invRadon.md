---
title: 'S2FunHarmonic.invRadon'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.invRadon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.invRadon.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

invert the Funk transform on the even spherical harmonics.

## Syntax

<div class="mx-form" markdown="1">

```python
reconstructed = poleAverage.invRadon()
```

</div>

## Description

The Funk transform averages over great circles and annihilates every odd degree.
This operation divides the even degrees by their nonzero Funk multipliers and
returns an even function. Odd information cannot be recovered from great-circle means.

## See also

[S2FunHarmonic.radon](S2FunHarmonic.radon_py.html), [S2Kernel.radon](S2Kernel.radon_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
S2FunHarmonic.invRadon(self)
```

</div>

MATLAB's [S2FunHarmonic.invRadon](S2FunHarmonic.invRadon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L796">source</a></font>
{% endraw %}
