---
title: 'mtex.SchmidFactor'
sidebar: function_reference_sidebar
permalink: mtex.SchmidFactor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Schmid factor of slip systems under a stress tensor: the shear the stress resolves
on the system over the difference of the extreme principal stresses, so that a uniaxial
tension gives the direction cosines; without a load the functions of the tension
direction on the sphere, one function for one system and a vector valued one for several,
antipodal as a tension along r and along -r are one load; relative=True divides by the
critical resolved shear stress of every system

## Syntax

A function of the tension direction:

```python
sF = SchmidFactor(sS)
```

Under a uniaxial tension along v:

```python
tau = SchmidFactor(sS, v)
```

```python
tau = SchmidFactor(sS, sigma)
tau = SchmidFactor(sS, sigma, relative=True)
```

## Signature

```python
SchmidFactor(sS, sigma=None, relative=False)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L107">source</a></font>
{% endraw %}
