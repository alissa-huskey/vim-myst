---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

MyST Markdown
=============

A syntax reference file that can be built using Jupyter Book and used for testing vim syntax.

Reference
---------

* [The MyST Syntax Guide](https://myst-parser.readthedocs.io/en/latest/using/syntax.html)
* [MyST Markdown Notebooks](https://myst-nb.readthedocs.io/en/latest/use/myst.html)
* [MyST Parser](https://myst-parser.readthedocs.io/en/latest/)
* [Jupytext > MyST Markdown](https://jupytext.readthedocs.io/en/latest/formats.html#myst-markdown)
* [markdown-it-py Parser](https://markdown-it-py.readthedocs.io/en/latest/index.html)

### Plugins

* [Admonition directives](https://myst-parser.readthedocs.io/en/latest/using/syntax-optional.html#admonition-directives)
* [MyST Parser > Admonition directives special syntax](https://myst-parser.readthedocs.io/en/latest/using/syntax.html#commonmark-block-tokens)
* [Auto-generated header anchors](https://myst-parser.readthedocs.io/en/latest/using/syntax-optional.html#syntax-header-anchors)
* [deflist](https://myst-parser.readthedocs.io/en/latest/using/syntax-optional.html#definition-lists)
* [Markdown Figures](https://myst-parser.readthedocs.io/en/latest/using/syntax-optional.html#markdown-figures)
* [amsmath](https://myst-parser.readthedocs.io/en/latest/using/syntax-optional.html#direct-latex-math)

Inline
----------

|                     |                  |                   |
|---------------------|------------------|-------------------|
| `a=1`               |  literal         | backtick          |
| **strong**          |  bold            | double astricks   |
| *emphasis*          |  italic          | single astrick    |
| ~~strike~~          |  strikethrough   | double tilda      |
| $z=\sqrt{x^2+y^2}$  |  math equation   | dollar sign       |
| \                   |  escape          | backslash         |
|                     |                  |                   |


```
\*  FIXME
```

Lines
----------

### Line comment

% line comment

### Line break

> Soft or hard
> ends with spaces or backslash

A hard break \
this should be on a new line

### Block breaks

See also [][#markdown-cells].

> Lines prefaced by `+++` are block breaks indicating a new text cell in
> [][#markdown-cells].  It will not show up in the rendered text, but is
> stored in the internal document structure for use by developers.


```
+++ some text
+++ {"meta": "data"}
```


### Thematic break

Creates a horizontal line in the output

---


Roles
-----

```
{rolename}`interpreted text`
```

### MyST Roles

|                                         |                                        |
|-----------------------------------------|----------------------------------------|
| `` {ref}`target` ``                     | link to an internal target             |
| `` {eq}`eq-label` ``                    | link to an equation                    |
| `` {doc}`../content/citations` ``       | link to local content file             |
| `` {glue:}`boot_mean` ``                | insert glued variable                  |

Links & References
------------------

* [MyST Parser > Targets and Cross-Referencing](https://myst-parser.readthedocs.io/en/latest/using/syntax.html#targets-and-cross-referencing)

### Links

> Autolink
<http://www.google.com>

[Jupyter Book](https://jupyterbook.org)

> link to a relative path
````
[PDF documentation](../advanced/pdf)
````

> link with title
[Jupyter Book](https://jupyterbook.org "JB Homepage")

> link with target defined later
[Jupyter Book][intro_page]

> implicit reference
[Jupyter Book Docs][]

> define target
[intro_page]: https://jupyterbook.org
[Jupyter Book Docs]: https://jupyterbook.org


### Targets

> create a target
````
This is a link [text](target "title").
````

> create a target to a header
> Precedes element to target, e.g. header.
```
(myst_cheatsheet)=
#### MyST Cheat Sheet
```

### Reference links

* [JupyterBook.org > References and citations](https://jupyterbook.org/content/citations.html)
* [MyST Parser > Footnotes](https://myst-parser.readthedocs.io/en/latest/using/syntax.html#syntax-footnotes)

````
|                                    |                                        |
|------------------------------------|----------------------------------------|
| {ref}`target`                      | link to an internal target             |
| {eq}`eq-label`                     | link to an equation                    |
| {doc}`../content/citations`        | link to local content file             |
| [^footnote1]                       | footnote reference link                |
````

> link to an internal target
> [myst_cheatsheet]
````
{ref}`myst_cheatsheet`
 [](myst_cheatsheet)
````

> specify the link title
> [MyST syntax lecture]
````
{ref}`MyST syntax lecture <myst_cheatsheet>`
[MyST syntax lecture](myst_cheatsheet)
````

> [Table 2] is an example
````
{numref}`example-table` is an example.
````

> This [table] is an example.
````
This {ref}`table <example-table>` is an example.
````

> Tbl 2 is an example.
````
{numref}`Tbl %s <example-table>` is an example.
````

> footnote reference link
This is text containing a footnote reference [^ref].

> this is the footnote reference definition
[^ref]: Some footnote text


Blocks
------

### HTML

<p>some text</p>

### Block Quote

> indented 4 spaces
    included as literal *text*


### Quoted Text

> quoted text

### Containers

* [markdown-it-container](https://github.com/markdown-it/markdown-it-container)
* [MyST Parser > Optional MyST Syntaxes](https://myst-parser.readthedocs.io/en/latest/using/syntax-optional.html)

```
::: class-name
content
:::
```

::: warning
*here be dragons*
:::

:::{admonition,warning} This *is* also **Markdown**
This text is **standard** _Markdown_
:::

::::{important}
:::{note}
This text is **standard** _Markdown_
:::
::::

### Line blocks

| The limerick packs laughs anatomical
| In space that is quite economical.
|    But the good ones I've seen
|    So seldom are clean
| And the clean ones so seldom are comical

| 200 Main St.
| Berkeley, CA 94718

### Admonitions

```{admonition} Here's my title
:class: warning

Here's my admonition content
```

Code
----

* [MyST NB > Syntax for code cells](https://myst-nb.readthedocs.io/en/latest/use/markdown.html)

> code fence

```
No syntax highlighting if no language
is indicated.
```

> code fence with language

```python
print('this is python')
```

> executable code blocks

```{code-cell} ipython3
note = "Python syntax highlighting"
print(note)
```

> with tags

```{code-cell} ipython3
:tags: [hide-output, show-input]
note = "Python syntax highlighting"
print(note)
```

```{code-block} python
---
lineno-start: 10
emphasize-lines: 1, 3
caption: |
    This is my
    multi-line caption. It is *pretty nifty* ;-)
---
a = 2
print('my 1st line')
print(f'my {a}nd line')
```

Notebook Integration
--------------------

* [Jupytext > MyST Markdown](https://jupytext.readthedocs.io/en/latest/formats.html#myst-markdown)
* [JupyterBook.org > Code Outputs](https://jupyterbook.org/content/code-outputs.html)

### Raw cells

```{raw-cell}
:raw_mimetype: text/html

<b>Bold text<b>
```

### Code cells

```{code-cell} ipython3
:tags: [hide-output, show-input]

print("Hallo!")
```

### Markdown cells

* [MyST Parser > Block Breaks](https://myst-parser.readthedocs.io/en/latest/using/syntax.html#block-breaks)
* [JupyterBook.org > MyST Notebooks](https://jupyterbook.org/file-types/myst-notebooks.html)
* [][#block-breaks]

+++ {"slide": true}

This is a markdown cell with metadata

+++

This is a new markdown cell with no metadata


### Rendering

> render as image

```{code-cell} ipython3
---
render:
 image:
   width: 200px
   alt: fun-fish
   classes: shadow bg-primary
 figure:
   caption: |
     Hey everyone its **party** time!
   name: fun-fish
---
from IPython.display import Image
Image("images/fun-fish.png")
```

### Tags

|       |                    |                                   |
|-------|--------------------|-----------------------------------|
| code  |  raises-exception  | don't halt kernel for exception   |
| code  |  remove-stderr     | don't display stderr              |
| code  |  remove-stdout     | don't display stdout              |

Glue
----

* [JupyterBook.org > Insert code outputs into page content](https://jupyterbook.org/content/code-outputs.html#glue-gluing)
* [MyST NB > Gluing numbers, plots, and tables](https://myst-nb.readthedocs.io/en/latest/use/glue.html)

> save a glue variable

```{code-cell} python3
from myst_nb import glue
my_variable = "here is some text!"
glue("cool_text", my_variable)

# or use the display=False argument to prevent display
from IPython.display import Math
eq = Math(r"\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}")
glue("example-eq", eq, display=False)


# glue("cool_text", my_variable, display=False)
```

> insert using the glue directive

```{glue:} cool_text
```

> Or insert inline using the glue role

{glue:}`cool_text`

### Glue role subcommands

```
{glue:subcommand}`key`
```

| subcommand | type      | renders   | example                         | format                             |
|------------|-----------|-----------|---------------------------------|------------------------------------|
| any        | both      |           | {glue:}`cool_text`              | `` {glue:}`key` {glue:any}`key` `` |
| text       | role      | text      | {glue:text}`cool_text`          | `` {glue:text}`key:format`      `` |
| figure     | directive | image     | see {ref}`glue-figure-example`  |  &nbsp;                            |
| math       | directive | equation  | see {ref}`glue-math-example`    |  &nbsp;                            |


(glue-figure-example)=
#### glue:figure Example

````
```{glue:figure} df_tbl
:figwidth: 300px
:name: "tbl:df"

A caption for a pandas table.
```
````


(glue-math-example)=
#### glue:math Example

````
```{glue:math} sym_eq
:label: eq-sym
```
````

### Tags

|                  |                                             |
|------------------|---------------------------------------------|
| full-width       | Cell takes up all of the horizontal space   |
| output_scroll    | Make output cell scrollable                 |
| margin           | Move code cell to the right margin          |
| hide-input       | Hide cell but the display the outputs       |
| hide-output      | Hide the outputs of a cell                  |
| hide-cell        | Hides inputs and outputs of code cell       |
| remove-input     | Remove the inputs of a cell                 |
| remove-output    | Remove the outputs of a cell                |
| remove-cell      | Remove the entire code cell                 |
| raises-exception | Mark cell as "expected to error"            |


Lists
-----

### Ordered and Unordered Lists

1. First item
2. Second item
  1. First sub-item

1. First item
2. Second item
  * First sub-item

* First item
* Second item
  * First subitem

* First item
  1. First subitem
  2. Second subitem


### Glossary, Definition Lists

* [MyST Parser > Optional MyST Syntaxes](https://myst-parser.readthedocs.io/en/latest/using/syntax-optional.html#definition-lists)
* [Pandoc.org > Definition lists](https://pandoc.org/MANUAL.html#definition-lists)


Term
: definition for term

  second paragraph

Term2
~ compact definition
~ compact definition 2

```{glossary}
Term3
  Definition
```



Directives
----------

> https://myst-parser.readthedocs.io/en/latest/using/syntax.html#directives-a-block-level-extension-point

### Parameter shorthand

````
```{directive}
:option: value

content
```
````

### Using YAML front-matter

````
```{directivename} arguments
---
key1: val1
key2: val2
---
This is
directive content
```
````

### Content shorthand

```{note} Notes require **no** arguments, so content can start here.
```

### RST directives

```{eval-rst}
.. figure:: images/fun-fish.png
  :width: 100px
  :name: rst-fun-fish

  Party time!

A reference: :ref:`rst-fun-fish`
```

### Nested directives

* [MyST Parser > Show backticks inside raw markdown blocks](https://myst-parser.readthedocs.io/en/latest/using/howto.html)

Inline nesting:

`` `hi` ``

> You can nest directives by ensuring that the tick-lines corresponding to the
> outermost directive are longer than the tick-lines for the inner directives.

````{note}
The next info should be nested
```{warning}
Here's my warning
```
````

Including
---------

* [MyST Parser > How-To](https://myst-parser.readthedocs.io/en/latest/using/howto.html)

### Include a markdown file

```{include} snippets/include-md.md
```

### Include rST

```{eval-rst}
.. include:: snippets/include-rst.rst
```

### Include from local filesystem outside of root folder

> as of myst-parser version 0.12.7

FIXME -- this breaks the syntax highlighting. The rest of the file is interpreted as comments.

```myst

% ```{include-literal} ../.outside.md
% :language: md
% ```
% Included:
% ```{include} ../.outside.md
% :relative-docs: docs/
% :relative-images:
% ```

```


Math
----

* [Jupyterbook.org > Math and equations](https://jupyterbook.org/content/math.html)

> math block

$$
z=\sqrt{x^2+y^2}
$$

> math block with label

$$
z=\sqrt{x^2+y^2}
$$ (mylabel)

> math directive

```{math}
:label: eq-label

z=\sqrt{x^2+y^2}
```

> link to an equation

Check out equation {eq}`eq-label`.


Tables
------

* [JupyterBook.org > Tables](https://jupyterbook.org/reference/cheatsheet.html#tables)

### Pipe tables

|    Training   |   Validation   |
| :------------ | -------------: |
|        0      |        5       |
|     13720     |      2744      |


### List tables

> :name: is the reference target
> for a numbered reference, include a table title

```{list-table} Title & caption
---
header-rows: 1
name: example-table
---
* - Training
  - Validation
* - 0
  - 5
* - 13720
  - 2744
```


Images
------

* [JupyterBook.org > Images and figures](https://jupyterbook.org/content/figures.html)

> standard markdown
![fishy](images/fun-fish.png)

> target defined later
![fishy][fishy-png]

> implicit target name
![fishy][]

[fishy-png]: images/fun-fish.png
[fishy]: images/fun-fish.png


> image directive

````
```{image} images/C-3PO_droid.png
:height: 150px
:name: image-example
```
````

### Image directive options

| name     | example value    |
|----------|------------------|
| alt      | fishy            |
| class    | bg-primary       |
| width    | 200px            |
| height   | 150px            |
| name     | image-example    |
| align    | center           |

> figure directive

````
```{figure} images/fun-fish.png
:height: 150px
:name: figure-example

Here is my figure caption!
```
````

:::{figure,myclass} markdown-fig
<img src="images/fun-fish.png" alt="fishy" class="bg-primary mb-1" width="200px">

This is a caption in **Markdown**!
:::

### Figure directive options

| name     | example value    | description and value details                                 |
|----------|------------------|---------------------------------------------------------------|
| name     | my-figure        | reference target                                              |
| align    | left             | `left`, `center` or `right`                                   |
| scale    | 50%              | percentage to scale, `%` optional                             |
| width    | 200px            | in `%`, `pt`, `px`, `em`, `cm`, `mm`, `in`, `ex`, `pc`        |
| height   |                  | in `pt`, `px`, `em`, `cm`, `mm`, `in`, `ex`, `pc`             |
| figclass | margin-caption   | adds the caption to the margin                                |
|          | margin           | places the figure in the margin                               |
|          | custom-class     | custom css class name                                         |

Front matter
------------

* [Sphinx-doc.org > File-wide metadata](https://www.sphinx-doc.org/en/master/usage/restructuredtext/field-lists.html)
* [MyST-parser Docs > Front Matter](https://myst-parser.readthedocs.io/en/latest/using/syntax.html#front-matter)
* [JupyterBook.org > MyST Notebooks](https://jupyterbook.org/file-types/myst-notebooks.html)

```
---
jupytext:
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---
```

### File-wide metadata fields


| name         | example value    | description                                                   |
|--------------|------------------|---------------------------------------------------------------|
| orphan       | true             | documents that are not specified in any toctrees              |
| tocdepth     | 2                | The maximum depth for a table of contents of this file.       |
| nocomments   |                  | display a comment form                                        |
| nosearch     |                  | full text search                                              |
|              |                  |                                                               |
