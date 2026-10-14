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

```python
nep = neper.init()
grains = nep.simulateGrains(1000, odf)
```

## Members

| | |
|---|---|
| [available](neper.available_py.html) | whether the command runs |
| [command](neper.command_py.html) | the command that runs Neper, the preference neperCommand, 'neper' by default |
| [init](neper.init_py.html) | the one interface of the session, neper.instance() |
| [instance](neper.instance_py.html) | the one interface of the session, created on first call |
| [neper](neper.neper_py.html) | the interface to Neper, the tessellation program, one per session with its settings: the geometry, the morphology, the iterations and the file path the tessellation is written to |
| [simulateChildGrains](neper.simulateChildGrains_py.html) | child lamellae in parent grains: the children of a parent in variants that alternate |
| [simulateGrains](neper.simulateGrains_py.html) | the grains of a tessellation with one grain per orientation, or n orientations of an ODF |
| [simulateTwinGrains](neper.simulateTwinGrains_py.html) | twinned lamellae: every second lamella of a host turned by the twin misorientation |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/neper.py#L25">source</a></font>
{% endraw %}
