---
title: 'S2FunHarmonic.truncate'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.truncate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.truncate.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the coefficients up to degree L; without L the trailing degrees whose power, damped by
(l+1)^2, stays below 1e-8 of the largest are dropped, MATLAB's truncate

## Syntax

<div class="mx-form" markdown="1">

```python
sF = truncate(sF)
```

The negligible degrees dropped.

</div>

<div class="mx-form" markdown="1">

```python
sF = truncate(sF, 8)
```

Cut, or padded with zeros, at degree 8.

</div>

## Description

The power of a degree is the norm of its coefficients divided by (l+1)^2, a bit of
regularisation, as MATLAB's; of a list of functions the largest over the list counts.
MATLAB's truncate takes no degree.

## Input

| `sF` | S2FunHarmonic |

## Keywords

| keyword | default | description |
|---|---|---|
| `L` | `None` | the bandwidth of the result |

## Output

| `sF` | S2FunHarmonic |

## See also

[S2FunHarmonic.power](S2FunHarmonic.power_py.html), [S2FunHarmonic.bandwidth](S2FunHarmonic.bandwidth_py.html)

MATLAB's [S2FunHarmonic.truncate](S2FunHarmonic.truncate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L361">source</a></font>
{% endraw %}
