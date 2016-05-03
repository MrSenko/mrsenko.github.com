Title: April 2016 Report
headline: New features for i18n_viz & Pelican
date: 2016-05-03 12:30
comments: true
Author: Alexander Todorov
Tags: Python, Ruby

Here is a quick status report of my work for [Mr. Senko](http://MrSenko.com). During
April 2016 I've worked on:

* Additional patches to the [Nitrate](https://github.com/Nitrate/Nitrate/pulls/atodorov)
test case management system;
* New features for the [i18n_viz](https://github.com/railslove/i18n_viz/pulls/atodorov)
Ruby gem;
* New features for [Pelican](https://github.com/getpelican/pelican/pull/1926).


Nitrate
-------

As I've written previously Nitrate is a test case management system, which we use internally.
Unfortunately it is using very old version of Django and it is not so easy to migrate
forward.

I've decided to stall all of my previous pull requests and focus on getting the tests
up and running in Travis-CI before going forward. I've managed to fix a few of them
locally but then hit a road block. The fact that the Nitrate team is very limited in
capacity (only 1 person at the moment) isn't helping either. I will continue working
on this but with lower priority.


New features for i18n_viz
--------------------------

[i18n_viz](https://github.com/railslove/i18n_viz) is a very cool Ruby gem which
lets your browse your own Rails application and visualize and edit your translatable
strings. Think of it as a reversed lookup for translations.
i18n_viz highlights your app’s translatable text and adds a tooltip containing
the translation key which links to the translation in your favorite online
translation tool.

I have added the `css_override` option to allow for better styling of the
highlights and tooltips provided by this gem.
[PR #20](https://github.com/railslove/i18n_viz/pull/20) has already been merged
but not released into a new version yet.

I've also fixed a
[bug with nested HTML tags](https://github.com/railslove/i18n_viz/pull/19) and
changed the `external_tool_url` option to support
[code execution](https://github.com/railslove/i18n_viz/pull/22). With this
the user is able to configure the URL to an online translation tool during
runtime. My particular use-case is to include the currently selected locale
in the URL string. These two pull requests are not merged yet and unfortunately
the package author is busy at the moment so it will take some time.

New features for Pelican
------------------------

I've managed to implement more granular control over tag, categories and
author slugs in Pelican in
[PR #1926](https://github.com/getpelican/pelican/pull/1926) and the code is
already merged!

Under the hood the `slugify()` method now can skip replacing non-alphanumeric
characters so you have more control over the generated URLs. I've experienced
this problem when migrating my personal blog from Octopress to Pelican.

Then I've also added the possibility to configure author slugs, which is
useful to blogs with multiple authors or if you want your author slug
to match your GitHub username.
In fact `pelicanconf.py` for Mr. Senko's blog looks like this:

    :::python
    ARTICLE_URL = 'blog/{author}/{date:%Y}/{date:%m}/{date:%d}/{slug}/'
    ARTICLE_SAVE_AS = ARTICLE_URL + 'index.html'
    
    AUTHOR_URL = 'blog/{slug}/'
    AUTHOR_SAVE_AS  = AUTHOR_URL + 'index.html'
    
    AUTHOR_SUBSTITUTIONS = [
        ('Alexander Todorov', 'atodorov'),
        ('Krasimir Tsonev',   'krasimir'),
    ]

**NOTE:** older URLs on this blog do not match above settings for
compatibility reasons!

I hope you like my work and please
**consider subscribing to [Mr. Senko]({filename}pages/subscribe.html)!**
if need a faster release cycle for the open source libraries you use.
