---
title: Deploying your Site
order: 3
---

Deploying your **nanoc-au** site will depend on what server you're using and what access you have to it.

However, the basic idea is the same:

### Upload the contents of `output`

If you upload the contents of the `output` folder, it should "just work". Since **nanoc** is a static site generator, the production version of the site is just a bunch of interlinked HTML files, so there's no databases to manage or server settings to tweak. As long as the server knows how to serve static HTML, you're set.

Here's a couple of ways to do this:

## Using `scp`

If you are on-campus, or if you are on the Auburn VPN, you can easily deploy to your personal `http://www.auburn.edu/~auusername/` webspace with a simple terminal command from the project root.

~~~
scp -r output/* auusername@mallard.auburn.edu:public_html
~~~

You will be required to enter your AU password to deploy.

## Using `git`

If you're deploying to a Git repository, such as Heroku or GitHub Pages, you can set up a second git repository within the `/output/` folder. For GitHub Pages:

~~~
cd output
git init
git add .
git commit -m "Initial commit"
git checkout -b gh-pages # GitHub Pages uses gh-pages branch
git branch -d master # won't need master branch
git remote add origin https://github.com/username/project.git # replace with your project
git push -u origin gh-pages --force
~~~