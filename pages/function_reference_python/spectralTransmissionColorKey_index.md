---
title: 'The class spectralTransmissionColorKey'
sidebar: function_reference_sidebar
permalink: spectralTransmissionColorKey_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spectralTransmissionColorKey_index.html
status: Reference
---
{% raw %}
the colour of a thin section of an anisotropic crystal between polariser and analyser:
light along the propagation direction of the specimen through a plate of the given
thickness in nanometres; no polariser is circular polarisation

## Syntax

<div class="mx-form" markdown="1">

```python
key = spectralTransmissionColorKey(rI, thickness)
key.propagationDirection, key.polarizer, key.phi
```

</div>

## Input

| `rI` | refractiveIndexTensor of the crystal |
| `thickness` | section thickness in nanometres |

## Members

| [orientation2color](spectralTransmissionColorKey.orientation2color_py.html) | the colours of the thin section at the orientations, the transmitted spectrum of light along the propagation direction between polariser and analyser |

## Used on

[BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [spectralTransmissionColorKey_index](spectralTransmissionColorKey_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/orientationkeys/__init__.py#L549">source</a></font>
{% endraw %}
