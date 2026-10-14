---
title: 'embedding.isclose'
sidebar: function_reference_sidebar
permalink: embedding.isclose_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [embedding](embedding_index_py.html).

whether two embeddings belong to the same frame and have the same images up to atol

## Syntax

The same images up to 1e-10:

```python
e1.isclose(e2)
```

Up to a coarser tolerance:

```python
e1.isclose(e2, atol=1e-3)
```

## Input

| | |
|---|---|
| `e1, e2` | embedding |

## Output

| | |
|---|---|
| `tf` | bool, one answer for the whole list |

## Keywords

| | default | |
|---|---|---|
| `atol` | `1e-10` | the absolute tolerance of every coordinate |

## See also

[embedding.dot](embedding.dot_py.html), [embedding.norm](embedding.norm_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/embedding.py#L365">source</a></font>
{% endraw %}
