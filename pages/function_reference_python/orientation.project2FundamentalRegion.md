---
title: 'orientation.project2FundamentalRegion'
sidebar: function_reference_sidebar
permalink: orientation.project2FundamentalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.project2FundamentalRegion.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the symmetric equivalents in the fundamental region, or those closest to the reference
ref (MATLAB's orientation.project2FundamentalRegion, quaternion.project2FundamentalRegion,
rotation.project2FundamentalRegion)

## Syntax

<div class="mx-form" markdown="1">

```python
ori = ori.projectIntoFundamentalRegion()
```

The equivalents in the fundamental region.

</div>

<div class="mx-form" markdown="1">

```python
ori = ori.projectIntoFundamentalRegion(oriRef)
```

Those closest to a reference.

</div>

<div class="mx-form" markdown="1">

```python
mori = mori.projectIntoFundamentalRegion(antipodal=True)
```

With grain exchange.

</div>

## Description

MATLAB's second form, the symmetry elements that do the projection, is not returned.

## Input

| `ori` | orientation |

## Keywords

| keyword | default | description |
|---|---|---|
| `ref` | `None` | orientation, the reference; by default the fundamental region of the frames |
| `antipodal` | `False` | add the grain exchange of a misorientation, mori == inv(mori), to the reduction |

## Output

| `ori` | orientation, of the same shape |

## See also

[orientation.symmetrise](orientation.symmetrise_py.html), [referenceFrame.fundamentalRegion](referenceFrame.fundamentalRegion_py.html)

MATLAB's [orientation.project2FundamentalRegion](orientation.project2FundamentalRegion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L750">source</a></font>
{% endraw %}
