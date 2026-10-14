---
title: 'loadSettings'
sidebar: function_reference_sidebar
permalink: loadSettings_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
applies the saved settings to the session: the key plottingConvention sets the default
convention, every other key the preference of that name. Returns the settings applied

## Syntax

```python
loadSettings()                        the user's file again, after reset() say
loadSettings('~/lab/mtex_settings.json')
```

## Signature

```python
loadSettings(path=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/settings.py#L53">source</a></font>
{% endraw %}
