---
title: Home
---

# nanoc-au

### A Static Site Generator for Auburn University Websites

This project merges the [nanoc static site generator](http://nanoc.ws) and the [2013 Auburn University site template](http://www.auburn.edu/template/2013/). It's meant for developers comfortable with the terminal to easily generate static websites fitting the modern AU template.

## Why Static?

A few good reasons: it's fast, safe, previewable, and versionable. You'll be able to host it on **any** webserver, since it's just static HTML. See more at [nanoc's site](http://nanoc.ws/about/#why-static).

## Requirements

I recommend using [RVM](http://rvm.io/) to manage your Ruby installations and gems. This project is developed using `ruby-2.1.0`.

## Installation

Pull the repository using git, then set up your gems.

~~~
git clone git@github.com:AuburnWrites/nanoc-au.git
cd nanoc-au
bundle
~~~

You now have access to the `nanoc` and `guard` commands - in two separate terminals, use these commands to set up a local server at <http://127.0.0.1:3000/> and automatically regenerate the site upon saving changes.

~~~
# to set up local server http://127.0.0.1:3000/
nanoc view
# to track changes (use in separate terminal window)
guard
~~~

## Getting started

If you're already familiar with **nanoc**, you're good to go. Otherwise, head to the [set up page](/setup/).

## Development

Need a new feature? [Please feel free to fork us on GitHub, make it, and send a pull request!](https://github.com/AuburnWrites/nanoc-au/)