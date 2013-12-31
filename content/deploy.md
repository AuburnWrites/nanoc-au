---
title: Deploying your Site
---

Deploying your **nanoc-au** site will depend on what server you're using and what access you have to it.

However, the basic idea is the same:

## Upload the contents of `output`

If you upload the contents of the `output` folder, it should "just work". Since **nanoc** is a static site generator, the production version of the site is just a bunch of interlinked HTML files, so there's no databases to manage or server settings to tweak. As long as the server knows how to serve static HTML, you're set.