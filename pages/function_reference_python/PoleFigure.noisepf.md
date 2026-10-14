---
title: 'PoleFigure.noisepf'
sidebar: function_reference_sidebar
permalink: PoleFigure.noisepf_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.noisepf.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

simulated diffraction counts: Poisson counts of factor * I + background, the background
subtracted again

## Syntax

<div class="mx-form" markdown="1">

```python
pfn = pf.noisepf(100)
```

Counts of radiation 100.

</div>

<div class="mx-form" markdown="1">

```python
pfn = pf.noisepf(100, 10)
```

With a background of 10.

</div>

<div class="mx-form" markdown="1">

```python
pfn = pf.noisepf(100, 10, nonnegative=True)
```

The negative counts set to zero.

</div>

## Description

Every intensity I is replaced by a random count of the Poisson distribution of the mean
factor * I + background, from which the background is subtracted again: the counts a
diffractometer measures for a pole figure of intensity I, the factor the radiation, the
background the counts every direction receives. Where the background exceeds a count the
result is negative, unless nonnegative=True sets it to zero.

## Input

| `pf` | PoleFigure |
| `factor` | the radiation, the counts of intensity one; one per pole figure or one for all |
| `background` | the background radiation |

## Keywords

| keyword | default | description |
|---|---|---|
| `nonnegative` | `False` | set the negative counts to zero (MATLAB's flag NONNEGATIV) |
| `rng` | `None` | a numpy.random.Generator, for reproducible counts |

## Output

| `pfn` | PoleFigure, the simulated counts |

## See also

[calcPoleFigure](SO3Fun.calcPoleFigure_py.html), [PoleFigureSimulation](PoleFigureSimulation_py.html)

MATLAB's [PoleFigure.noisepf](PoleFigure.noisepf.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L518">source</a></font>
{% endraw %}
