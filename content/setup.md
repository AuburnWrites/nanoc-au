---
title: Setting up your Site
order: 1
---

You'll need to do two things to set up your site: **customize your site's 
configuration options** and **create content pages**.

## Configuration Options

The configuration options for your site can be found in `/nanoc.yaml` in the 
site project root. The top of the file looks something like this:

~~~
#####################
# nanoc-au Settings #
#####################

# Edit the following to customize the site to your organization

# Put your organization's name here.
organization: Auburn University Site Generator
~~~

This YAML file is imported by nanoc as the site's configuration settings, 
available as `@config` when rendering pages. The "nanoc-au Settings" are 
custom settings throughout an Auburn site. All you need to do is edit the 
settings as appropriate, and these options will be propogated to every page 
on the site.

## Create content pages

Creating pages for your site is as simple as adding a file to the `/content/` 
folder in your project. Here's the schematic of this site based on its 
content files:

~~~
content
|
|-- assets              # folder to hold assets, can edit 
|                       # contents to customize site
|
|-- deploy.md           # 1st-level subpage
|
|-- formatting.md       # 1st-level subpage
|
|-- index.md            # site homepage
|
|-- setup.md            # 1st-level subpage
|
|-- setup               # folder to hold subpages
    |
    |-- example.md      # 2nd-level subpage under setup
~~~

Compiling the site will result in the following `output` folder:

~~~
output
|
|-- assets              # exact copy of assets in content folder
|
|-- deploy
|   |
|   |-- index.html      # compiles to deploy/index.html so 
|                       # /deploy/ route works on any server
|
|-- formatting
|   |
|   |-- index.html      # formatting subpage
|
|-- index.html          # site homepage
|
|-- setup
    |
    |-- index.html      # setup subpage
    |
    |-- example
        |
        |-- index.html  # example 2nd-level subpage
~~~

The default configuration of **nanoc-au** is set up so that you can base your 
links assuming that the site will be situated in the root of the domain. For 
example, to link ot the example subpage, 
`<a href="/setup/example/">Example</a>` is sufficient, even if the site will 
not actually be hosted in the root of the domain - compiling the site will 
rewrite the href attribute to be relative to the current page.

[nanoc](http://nanoc.ws) has support for several types of markup (via 
utilizing the appopriate RubyGems), but by default **nanoc-au** supports just 
**Markdown** `*.md`, **Slim** `*.slim`, and of course plain **HTML** 
`*.html`.

To learn more about using Markdown, visit the 
[formatting page](/formatting/). To learn more about using Slim for more 
complicated pages, visit <http://slim-lang.com/>.



