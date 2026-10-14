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

```python
setMTEXpref(name, value, save=False)
```

```python
setMTEXpref('maxS2Bandwidth', 256)
setMTEXpref('kernels', 'numpy')
setMTEXpref('displayRows', 40, save=True)
```

## Used on

[GeneralConceptsConfiguration](GeneralConceptsConfiguration_py.html), [PiezoElectricity](PiezoElectricity_py.html), [TensorVisualisation](TensorVisualisation_py.html)

MATLAB's [setMTEXpref](setMTEXpref.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/session.py#L59">source</a></font>
{% endraw %}
