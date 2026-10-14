---
title: 'The class neper'
sidebar: function_reference_sidebar
permalink: neper_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the interface to Neper, the tessellation program, one per session with its settings: the
geometry, the morphology, the iterations and the file path the tessellation is written to

## Syntax

<div class="mx-form" markdown="1">

```python
nep = neper.init()
grains = nep.simulateGrains(1000, odf)
```

</div>

## Members

| [available](neper.available_py.html) | whether the command runs |
| [command](neper.command_py.html) | the command that runs Neper, the preference neperCommand, 'neper' by default |
| [init](neper.init_py.html) | the one interface of the session, neper.instance() |
| [instance](neper.instance_py.html) | the one interface of the session, created on first call |
| [neper](neper.neper_py.html) | the interface to Neper, the tessellation program, one per session with its settings: the geometry, the morphology, the iterations and the file path the tessellation is written to |
| [simulateChildGrains](neper.simulateChildGrains_py.html) | a microstructure after a phase transformation: Neper's parent grains cut into lamellae of child variants |
| [simulateGrains](neper.simulateGrains_py.html) | the grains of a Neper tessellation of the domain, one grain per orientation |
| [simulateTwinGrains](neper.simulateTwinGrains_py.html) | a microstructure of twinned grains: Neper's grains cut into lamellae, every second lamella in twin orientation |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/neper.py#L25">source</a></font>
{% endraw %}
