Title: January 2016 Report
headline: Pelican, Sphinx and misc
date: 2016-02-03 22:30
comments: true
Author: Alexander Todorov
Tags: Python

This is my first status report for [Mr. Senko](http://MrSenko.com). During
January 2016 I've worked on:

* Improvements to
[pelican-clean-blog](https://github.com/gilsondev/pelican-clean-blog/pulls?q=is%3Apr+author%3Aatodorov+is%3Aclosed)
theme
* URL updates in `package.json` for several Node.js packages;
* .spec file to build RPMs for
[django-ses](https://github.com/django-ses/django-ses/pull/83);
* New test case for
[Elixir study exercises](https://github.com/belgian-elixir-study-group/efl/pull/5)
* Updates to an old PR for
[Sphinx](https://github.com/sphinx-doc/sphinx/pull/1902) which also fixes a
new regression;
* Filed a
[RFE](https://github.com/getpelican/pelican/issues/1902) against Pelican
and will continue working on it this month.


Sphinx broke
------------

The Sphinx changes are particularly interesting - the fix for
issue #656 in commit 4c4450d changes the Graphviz's
`node['options']` type from `list` to `dict` which in turn breaks
`html_visit_inheritance_diagram()` and the inheritance_diagram extension.

My previous work on this PR introduced some basic tests, which were missing
and they caught the type change! Because the tests and my latest changes are
not yet merged into master the `inheritance_diagram.py` extension is still
broken! The tests fail in Travis-CI but probably due to `dot` not being
installed. Locally everything seems to work.

Its also worth mentioning that it's been 2 weeks since I've updated my PR
and a bit more since Sphinx introduced the regression. As far as I can see
there's not been any updates with respect to this. 
If you'd like to get a
faster response cycle please **consider subscribing to
[Mr. Senko](/subscribe.html)!**
