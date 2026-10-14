---
title: 'getMTEXpref'
sidebar: function_reference_sidebar
permalink: getMTEXpref_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: getMTEXpref.html
status: Reference
---
{% raw %}
one preference, or with no name all of them as a new dict, MATLAB's struct

## Syntax

<div class="mx-form" markdown="1">

```python
value = getMTEXpref('EulerAngleConvention')
```

One preference.

</div>

<div class="mx-form" markdown="1">

```python
value = getMTEXpref('myPref', default=1)
```

A preference that may not be set.

</div>

<div class="mx-form" markdown="1">

```python
prefs = getMTEXpref()
```

All of them.

</div>

## Input

| `name` | the name of the preference |

## Keywords

| keyword | default | description |
|---|---|---|
| `default` | `None` | what an unset preference returns |

## Output

| `value` | its value in this session, or default when it is not set |
| `prefs` | dict of every preference, a copy |

## See also

[setMTEXpref](setMTEXpref_py.html), [loadSettings](loadSettings_py.html)

## Used on

[GeneralConceptsConfiguration](GeneralConceptsConfiguration_py.html)

MATLAB's [getMTEXpref](getMTEXpref.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/session.py#L52">source</a></font>
{% endraw %}
