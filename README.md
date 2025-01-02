# structured-list-md

Guidelines, scripts for authoring structured, machine readable lists in plain Markdown by leveraging HTML.

## Guidelines


- The input must be valid markdown.

- The list can be either ordered(numbered) or unordered(bulleted). 

- Description is not necessary, but if it's there, it should be preceded and followed by a new line. 

- There should not be any newline  between items that do not have descriptions, else the markdown parsers will introduce additional `p` tag after `li`.


## Conversions

- li -> dt

- p -> dd

- ul/ol -> dl


## Input Markdown Item List

```md
- Item 1

Description of item 1. 

- Item 2
- Item 3
```

## Intermediate HTML Item List

```html
<ul>
<li>Item 1</li>
</ul>
<p>Description of item 1.</p>
<ul>
<li>Item 2</li>
<li>Item 3</li>
</ul>
```

## Final HTML Definition List

```html
<dl>
<dt>Item 1</dt>
</dl>
<dd>Description of item 1.</dd>
<dl>
<dt>Item 2</dt>
<dt>Item 3</dt>
</dl>
```
