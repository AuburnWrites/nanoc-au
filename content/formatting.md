---
title: Formatting Pages
order: 2
---

Regardless of what markup language you'll want to use, there's a required header at the beginning of each content item:

~~~
---
title: Formatting Pages
---
~~~

When generating the site, this YAML markup is parsed in order to know some contextual data on the page. Right now, only a `title` attribute is supported.

## Markdown

For basic pages, using **Markdown** is recommended. **nanoc-au** uses [kramdown](http://kramdown.gettalong.org/) to parse Markdown markup, so you can refer to the official site for a full list of features.

Here's the basic things you'll need, though:

### Paragraphs `<p>` and Line Breaks `<br>`

~~~
Just write text!

Double-space lines for new paragraphs. \\
Double backslashes give new lines.
~~~

Just write text!

Double-space lines for new paragraphs. \\
Double backslashes give new lines.

### Links `<a>`

~~~
Use [square brackets](http://www.auburn.edu) for the text and [parentheses](http://www.auburntigers.com) for the URL.
~~~

Use [square brackets](http://www.auburn.edu) for the text and [parentheses](http://www.auburntigers.com) for the URL.

### Bold `<strong>` and italics `<em>`

~~~
Use **lots** of *asterisks*.
~~~

Use **lots** of *asterisks*.

### Images `<img>`

~~~
![Alt Text](http://www.auburn.edu/template/images/thisisauburn/thisisblue.png "Title Text")
~~~

![Alt Text](http://www.auburn.edu/template/images/thisisauburn/thisisblue.png "Title Text")

### Lists `<ul>` and `<ol>`

~~~
- A
* B
- C
- D

1. One
2. Two
42. Three
2. Four
~~~

- A
* B
- C
- D

1. One
2. Two
19. Three
2. Four