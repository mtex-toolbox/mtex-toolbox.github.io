---
title: 'settingsFile'
sidebar: function_reference_sidebar
permalink: settingsFile_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the path of the user's settings file, whether or not it exists: MTEX_SETTINGS when set, else
mtex_settings.json in the user's configuration folder, %APPDATA%/mtex on Windows and
$XDG_CONFIG_HOME/mtex or ~/.config/mtex elsewhere; None when MTEX_SETTINGS is empty

## Syntax

<div class="mx-form" markdown="1">

```python
settingsFile()
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/settings.py#L21">source</a></font>
{% endraw %}
