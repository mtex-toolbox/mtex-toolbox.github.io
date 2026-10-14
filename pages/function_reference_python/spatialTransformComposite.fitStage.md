---
title: 'spatialTransformComposite.fitStage'
sidebar: function_reference_sidebar
permalink: spatialTransformComposite.fitStage_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spatialTransformComposite](spatialTransformComposite_index_py.html).

return a composite with one stage fitted to supplied point pairs

## Syntax

<div class="mx-form" markdown="1">

```python
fitted = T.fitStage(s, posA, posB, weights=w)
```

</div>

## Description

The zero-based stage s is replaced by a fit of the same transform class. Existing model
options, such as polynomial degree, are retained unless overridden by keywords. The other
stages are kept. The input composite is unchanged.

Point pairs are passed directly to that stage's fit method. When fitting residual
misalignment, supply coordinates already adjusted for the other stages; this method does
not calculate residual point pairs automatically.

## Input

| `s` | zero-based stage index |
| `posA` | vector3d input positions for the selected stage |
| `posB` | corresponding target positions |
| `kwargs` | options accepted by the selected stage's fit method |

## Output

| `fitted` | composite with the fitted stage |

## See also

[spatialTransformPoly.fit](spatialTransformPoly.fit_py.html), [spatialTransformProjective.fit](spatialTransformProjective.fit_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
spatialTransformComposite.fitStage(self, s, posA, posB, **kwargs)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L940">source</a></font>
{% endraw %}
