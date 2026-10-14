---
title: 'openDoc'
sidebar: function_reference_sidebar
permalink: openDoc_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a documentation page as a script to run section by section, or the reference page of a
function in the browser

## Syntax

The list of the documentation pages:

```python
pages = openDoc()
```

The pages of one chapter:

```python
openDoc('EBSDAnalysis')
```

The page as a script, opened in VS Code:

```python
path = openDoc('EBSDTutorial')
```

The page as a Jupyter notebook:

```python
path = openDoc('EBSDTutorial', notebook=True)
```

The reference page of a function by its name:

```python
url = openDoc('fibre.angle')
```

The reference page of a function itself:

```python
url = openDoc(calcGrains)
```

The reference page of a method:

```python
url = openDoc(ori.mean)
```

A documentation page is written as <Page>.py, a "# %%" line before every section, into the
current folder, and opened in VS Code, where every section runs on its own; with
notebook=True it is written as the Jupyter notebook <Page>.ipynb. A file already there is
kept unless overwrite=True. A function, class or method, by its name or itself, opens its
page of the function reference on the MTEX website.

## Input

| | |
|---|---|
| `name` | str, a documentation page, a chapter or the name of a function; or the function, class or method itself |

## Output

| | |
|---|---|
| `out` | the list of pages for no name, the pages of a chapter, the path of the file written, or the address of the reference page |

## Keywords

| | default | |
|---|---|---|
| `folder` | `None` | the folder the script is written into, by default the current one |
| `overwrite` | `False` | write the page again over a file of its name |
| `edit` | `True` | open the script in VS Code, or the reference page in the browser; False only writes the file or returns the address |
| `notebook` | `False` | write a Jupyter notebook instead of a script |

## See also

[mtexdata](mtexdata_py.html), [Installation](Installation_py.html), [MATLABtoPython](MATLABtoPython_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/opendoc.py#L160">source</a></font>
{% endraw %}
