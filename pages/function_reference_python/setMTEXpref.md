---
title: 'setMTEXpref'
sidebar: function_reference_sidebar
permalink: setMTEXpref_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: setMTEXpref.html
status: Reference
---
{% raw %}
sets a preference of the session; with save=True also in the user's settings file, so that
it holds in every later session

## Syntax

For this session:

```python
setMTEXpref('maxS2Bandwidth', 256)
```

The NumPy forms instead of the compiled loops:

```python
setMTEXpref('kernels', 'numpy')
```

For every later session too:

```python
setMTEXpref('displayRows', 40, save=True)
```

Setting 'threads' or 'hugePages' applies the new value at once to the libraries it
concerns. The settings file is mtex_settings.json, MATLAB's mtex_settings.m; nothing is
written when MTEX_SETTINGS is empty.

## Input

| | |
|---|---|
| `name` | the name of the preference |
| `value` | its new value |

## Keywords

| | default | |
|---|---|---|
| `save` | `False` | store the preference in the user's settings file as well |

## See also

[getMTEXpref](getMTEXpref_py.html), [loadSettings](loadSettings_py.html), [plottingConvention.default](plotx2east_py.html)

## Used on

[GeneralConceptsConfiguration](GeneralConceptsConfiguration_py.html), [PiezoElectricity](PiezoElectricity_py.html), [TensorVisualisation](TensorVisualisation_py.html)

MATLAB's [setMTEXpref](setMTEXpref.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/session.py#L73">source</a></font>
{% endraw %}
