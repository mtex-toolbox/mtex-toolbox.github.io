---
title: 'transformODF'
sidebar: function_reference_sidebar
permalink: transformODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: transformODF.html
status: Reference
---
{% raw %}
the child texture of a parent texture, the transformation texture; MATLAB's transformODF,
called as variants(p2c, odf)

## Syntax

<div class="mx-form" markdown="1">

```python
odfC = transformODF(odfP, p2c)
```

Every variant equally likely.

</div>

<div class="mx-form" markdown="1">

```python
odfC = transformODF(odfP, p2c, vSel)
```

The parents weighted by a function vSel.

</div>

## Description

The child ODF at a child orientation is the mean of the parent ODF over the parent
orientations it can come from, one per variant of p2c, expanded to the bandwidth of the
parent ODF. With vSel the parents are weighted by its values at them, normalised to mean
one per child orientation, and the child ODF is scaled to the mean of the parent ODF, a
density again, where MATLAB leaves it unscaled. MATLAB's 'variantSelection' takes a weight per variant or the
number of one variant instead; the port has no such form.

## Input

| `odfP` | SO3Fun, the parent ODF |
| `p2c` | orientation, the parent to child orientation relationship |

## Keywords

| keyword | default | description |
|---|---|---|
| `vSel` | `None` | an SO3Fun over the parent orientations, the variant selection |

## Output

| `odfC` | SO3FunHarmonic, the child ODF in the child crystal frame |

## See also

[orientation.variants](orientation.variants_py.html), [calcParent2Child](calcParent2Child_py.html), [unimodalODF](unimodalODF_py.html)

MATLAB's [transformODF](transformODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/funops.py#L147">source</a></font>
{% endraw %}
