---
title: 'spectralTransmissionColorKey.orientation2color'
sidebar: function_reference_sidebar
permalink: spectralTransmissionColorKey.orientation2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [spectralTransmissionColorKey](spectralTransmissionColorKey_index_py.html).

the colours of the thin section at the orientations, the transmitted spectrum of light along
the propagation direction between polariser and analyser

## Syntax

<div class="mx-form" markdown="1">

```python
key = spectralTransmissionColorKey(rI, 30000)
key.polarizer = vector3d.X
rgb = key.orientation2color(ebsd['Fo'].orientations)
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
spectralTransmissionColorKey.orientation2color(self, ori)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys.py#L569">source</a></font>
{% endraw %}
