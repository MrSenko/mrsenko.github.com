Title: What I've worked on in December 2016
headline: pylint, django-chartit, pelican-ab, Rspec
date: 2016-12-30 10:30
comments: true
Author: Alexander Todorov
Tags: Python, Ruby

Hello everyone, during December I've been working on several
different projects from our supported
[Python software stack]({filename}pages/support/python.html)
and also ventured into Ruby land.

Versions 0.2.3 and 0.2.4 of pelican-ab
--------------------------------------

*pelican-ab* is an A/B testing plugin for Pelican, the static site
generator for Python. It allows you to encode experiments in your
templates and renders the experiment selected by the `AB_EXPERIMENT`
environment variable.

There were two versions released in December 2016 making it compatible
with the newly released *Pelican 3.7.0*, adding more tests and fixing some
minor bugs.

Version 0.2.8 of django-chartit
-------------------------------

I have worked on a new version for django-chartit which adds support for
[model properties and raw SQL queries in charts]({filename}2016-12-13-django-chartit-0.2.8.markdown).
I've also done internal work for further refactoring but without
anything concrete yet!

New extensions for pylint
-------------------------

I've worked on the new
[compare-to-empty-string](https://github.com/PyCQA/pylint/pull/1183)
extension for pylint. Using this extension the following snippet

    :::python
    if S != "":
        pass
    
    if S == '':
        pass

will be flagged as problematic because it can be written in a more natural way:

    :::python
    if S:
        pass
    
    if not S:
        pass


The extension will be disabled by default because empty string may be
a valid value depending on the behavior of your program. I have also
created a similar extension to flag integer comparisons against zero,
see [pylint#1243](https://github.com/PyCQA/pylint/pull/1243).
While these may seem a bit extreme they are very useful to identify
code which can be refactored to reduce comparisons
when coupled with mutation testing!

New Rspec formatters
-----------------

I've worked on two new formatters for Rspec:

* [rspec_numbered_documentation](https://github.com/MrSenko/rspec_numbered_documentation);
* [rspec_key_value](https://github.com/MrSenko/rspec_key_value).

Both add simple syntactic sugar to how Rspec output can be formatted and make it
easier for debugging or sending off for further machine processing.


I hope you like my work and please
**[subscribe to Mr. Senko]({filename}pages/subscribe.html)**
if you need faster response cycle for the open source libraries you use.
