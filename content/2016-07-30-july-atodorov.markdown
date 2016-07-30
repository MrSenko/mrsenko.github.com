Title: July 2016 Status Report
headline: mutation testing & django-chartit
date: 2016-07-30 11:30
comments: true
Author: Alexander Todorov
Tags: Python

Hello everyone, July has been relatively busy in terms of pull requests.
I've been working on *Cosmic Ray* the mutation testing tool for Python
and in the last couple of days taken over maintenance of *django-chartit*.

I've made several improvements against *Cosmic Ray*. The most notable
are:

* Added support for nosetests test runner;
* Added a True-False, False-True replacer operator;
* Added workaround for empty `__init__.py` files which addresses
[Python #27578](http://bugs.python.org/issue27578);
* Made *Cosmic Ray* accept directories and .py file names as possible
inputs which works like a charm for users who rely heavily on bash completion;

I will be continuing to work on *Cosmic Ray* and also integrate mutation testing
as part of the standard testing toolset used by Mr. Senko.


Then I've started working on
[django-chartit](https://github.com/chartit/django-chartit) which is a very
popular module that has been abandoned in the last couple of years.
My immediate goal was to merge back the
[django-chartit2](https://github.com/grantmcconnaughey/django-chartit2) fork
by Grant McConnaughey, which adds Python 3 and latest Django support and merge
some pending pull requests.
I've been working on fixing quite a few errors and warnings reported by the test
tools and getting the documentation up to speed. A much anticipated release on
PyPI will be coming out very soon. Once the merger between *django-chartit* and
*django-chartit2* is complete I will continue working on the reported issues.


I hope you like my work and please
**[subscribe to Mr. Senko]({filename}pages/subscribe.html)**
if you need a faster response cycle for the open source libraries you use.
