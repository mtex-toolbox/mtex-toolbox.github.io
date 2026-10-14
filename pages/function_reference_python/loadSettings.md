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

<div class="mx-form" markdown="1">

```python
loadSettings()
```

The user's file again, after reset() say.

</div>

<div class="mx-form" markdown="1">

```python
loadSettings('~/lab/mtex_settings.json')
```

Another file.

</div>

## Description

A setting that cannot be applied is left out with a warning; a missing file applies
nothing. The threads and huge pages are applied anew afterwards.

## Input

| `path` | the settings file, by default the user's: MTEX_SETTINGS when set, else mtex_settings.json in the user's configuration folder |

## Output

| `data` | dict of the settings read |

## See also

[setMTEXpref](setMTEXpref_py.html), [getMTEXpref](getMTEXpref_py.html), [plottingConvention.makeDefault](plottingConvention.makeDefault_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
loadSettings(path=None)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/settings.py#L53">source</a></font>
{% endraw %}
