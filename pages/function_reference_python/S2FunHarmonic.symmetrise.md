---
title: 'S2FunHarmonic.symmetrise'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.symmetrise_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.symmetrise.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

the projection onto the functions invariant under the group of the frame, or under a
list of rotations forming a group the frame does not name; an axis valued function is even;
MATLAB's symmetrise

## Syntax

Under the group of the frame of sF:

```python
sF = symmetrise(sF)
```

Under the group of another frame, the result in that frame:

```python
sF = symmetrise(sF, crystalFrame('432'))
```

The mean over a group of rotations:

```python
sF = sF.symmetrise(rotation.byAxisAngle(zvector, np.arange(4)*90*degree))
```

Each degree is averaged over the group, the mean of the Wigner matrices of its rotations
applied to the coefficients, which keeps exactly the invariant part. A frame given puts the
function in that frame, which names the group. MATLAB's symmetrise(sF, d) about a direction,
returning a kernel, has no counterpart.

## Input

| | |
|---|---|
| `sF` | S2FunHarmonic |

## Output

| | |
|---|---|
| `sF` | S2FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `rots` | `None` | rotation of a group, or a crystalFrame or specimenFrame whose group is taken |

## See also

[S2FunHarmonic.eval](S2FunHarmonic.eval_py.html), [Miller.symmetrise](Miller.symmetrise_py.html)

MATLAB's [S2FunHarmonic.symmetrise](S2FunHarmonic.symmetrise.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L416">source</a></font>
{% endraw %}
