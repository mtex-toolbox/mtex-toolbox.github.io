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

The user's file again, after reset() say:

```python
loadSettings()
```

Another file:

```python
loadSettings('~/lab/mtex_settings.json')
```

A setting that cannot be applied is left out with a warning; a missing file applies
nothing. The threads and huge pages are applied anew afterwards.

## Input

| | |
|---|---|
| `path` | the settings file, by default the user's: MTEX_SETTINGS when set, else mtex_settings.json in the user's configuration folder |

## Output

| | |
|---|---|
| `data` | dict of the settings read |

## See also

[setMTEXpref](setMTEXpref_py.html), [getMTEXpref](getMTEXpref_py.html), [plottingConvention.makeDefault](plottingConvention.makeDefault_py.html)

## Signature

```python
loadSettings(path=None)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/settings.py#L53">source</a></font>
{% endraw %}
