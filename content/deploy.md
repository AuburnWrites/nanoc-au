---
title: Deploying your Site
---

Deploying your **nanoc-au** site will depend on what server you're using and what access you have to it.

However, the basic idea is the same:

## Upload the contents of `output`

If you upload the contents of the `output` folder, it should "just work". Since **nanoc** is a static site generator, the production version of the site is just a bunch of interlinked HTML files, so there's no databases to manage or server settings to tweak. As long as the server knows how to serve static HTML, you're set.

## Using `scp` in the Terminal

If you are on-campus, or if you are on the Auburn VPN, you can easily deploy to your personal `http://www.auburn.edu/~auusername/` webspace with a simple terminal command from the project root.

~~~
scp -r output/* auusername@mallard.auburn.edu:public_html
~~~

You will be required to enter your AU password to deploy.