---
title: nanoc-au for Newbies
order: 4
---

This might be your first time using a command-line static site generator.
This guide will get you from 0 to running in no time.

### Requirements

While you should be able to use nanoc and nanoc-au with Windows, this guide
will assume you're using Mac OSX since that's what I'm using to write it!
If you're using Linux, most if not all of the instructions should carry over.

You will do most of your work in the Terminal, but even if you're 
unexperienced with the command line you should be fine.

### Ruby and rbenv

The following might be a pain, but you only need to do it once, and then
you're set up.

Since nanoc is a Ruby library, you'll need a copy of Ruby. OSX has Ruby 
installed by default (the version of Ruby depending on your version of OSX). 
But it's generally good practice to have some sort of Ruby version manager 
anyway so you don't need to mess with your system installation if you wanted 
to, say, upgrade to a newer version.

I suggest [rbenv](https://github.com/sstephenson/rbenv). You can also use 
[RVM](https://rvm.io/) if you prefer.

If you're going with rbenv, you can more or less follow its
[installation](https://github.com/sstephenson/rbenv#installation) 
instructions. For OSX you definitely want to use the Homebrew utility.

~~~
$ brew update
$ brew install rbenv ruby-build
~~~

If you're not familar with your "profile", it's usually a file located at 
`~/.bash_profile` a.k.a. `/Users/yourname/.bash_profile` 
which loads some shell commands at the start of each 
session. Be sure to take Homebrew's advice and add a line like 
`eval "$(rbenv init -)"` to your profile file so that rbenv can work as
intended.

Once you see something like

~~~
$ which rbenv
/usr/local/bin/rbenv
~~~

you're ready to go. I'd recommend installing the latest Ruby, which is
`2.1.1` at the time of writing. If you installed from Homebrew, it came with
`ruby-build`, but otherwise follow the installation instructions to get
ruby-build. You can then install Ruby 2.1.1 by:

~~~
$ rbenv install 2.1.1
Downloading ruby-2.1.1.tar.gz...
-> http://dqw8nmjcqpjn7.cloudfront.net/e57fdbb8ed56e70c43f39c79da1654b2
Installing ruby-2.1.1...
Installed ruby-2.1.1 to /Users/yourname/.rbenv/versions/2.1.1
~~~

rbenv is set up so that most of the time your Ruby commands will pass
through to your system's Ruby version. But, since nanoc-au includes a
`.ruby-version` file, rbenv will read that and know to use its copy
of `2.1.1` when you are within the project directory.


### Gitting nanoc-au

You can download the zip of files from GitHub, but the best way to get
nanoc-au is to use Git. We like Homebrew, since all you need to do is

~~~
$ brew install git
~~~

Git is a version managment system. To get the latest version of nanoc-au, do
the following:

~~~
$ git clone git@github.com:StevenClontz/nanoc-au.git
Cloning into 'nanoc-au'...
remote: Reusing existing pack: 208, done.
remote: Total 208 (delta 0), reused 0 (delta 0)
Receiving objects: 100% (208/208), 53.25 KiB | 0 bytes/s, done.
Resolving deltas: 100% (84/84), done.
Checking connectivity... done.
$ mv nanoc-au my-awesome-site
$ cd my-awesome-site
$ git remote rename origin nanoc-au
~~~

The `my-awesome-site` folder now contains your project. It's actually a
copy of this site that you can edit as needed for your project.

### Bundler and RubyGems

Rather than force you to install `nanoc` or the other required Ruby libraries
by hand, nanoc-au comes with a Gemfile which lists all the required libraries.

To use it, first install Bundler by using RubyGems (packaged with Ruby):

~~~
$ gem install bundler
~~~

You can then use Bundler to install the rest of the required "gems" (Ruby
libraries) with a simple

~~~
$ bundle
Fetching gem metadata from http://rubygems.org/.........
Fetching additional metadata from http://rubygems.org/..
Installing rack (1.5.2)
Installing adsf (1.2.0)
(etc.)
~~~

Notice that RubyGems knows the dependencies of each gem, so those are 
also downloaded and installed. Some of these (like nanoc) have commands 
which can be used in the terminal. You'll need to let rbenv know about them
by running

~~~
$ rbenv rehash
~~~

### Building your first site

You now have a copy of the source for this website (in the `content`) folder,
but you don't have a copy of the HTML itself which will be hosted online.

To build your site, use

~~~
$ bundle exec nanoc
Loading site data… done
Compiling site…
      create  output/assets/footer.png
      create  output/assets/style.css
      create  output/deploy/index.html
      create  output/formatting/index.html
      create  output/index.html
      create  output/new/index.html
      create  output/setup/example/index.html
      create  output/setup/example2.png
      create  output/setup/index.html

Site compiled in 0.70s.
~~~

The `bundle exec` bit is important if you have multiple versions of `nanoc`
installed on your computer, since it reads the Gemfile to know to use
which version.

Anyway, that's it. You can now move the contents of `output` to your web
server. For more information, check out the [setup](/setup/) and 
[deploy](/deploy/) pages. Have fun!

## Questions?

Please email me at <steven.clontz@gmail.com> with questions and I'll
update this guide to better address them in the future!





