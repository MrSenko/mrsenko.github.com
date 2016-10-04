Title: Status Report for September 2016
headline: working on Cosmic Ray and pylint
date: 2016-10-04 10:30
comments: true
Author: Alexander Todorov
Tags: Python

Hello everyone, during September I've been focusing on
[Cosmic Ray](https://github.com/sixty-north/cosmic-ray) which
is a supported package of our Python software stack.

The changes include better error checking when running the test suite in
Travis CI, fixes for some code smells and style updates, some Python 3.3
compatibility fixes, traceback fix for Python 3.4, new `and-or` replacement
operators and internal refactoring.

During my work on `and-or` replacement operators it turned out that *Cosmic Ray*
didn't support the notion of one operator producing multiple code mutations.
This required refactoring of project internals and is now currently supported.
As a follow up there are a couple more issues opened to clean up the existing
code, mainly the comparisons replacement operators.

**NOTE** *Cosmic Ray* is still not compatible with Python 3.3 and will probably
never be, despite my work. In `cosmic_ray/importing.py` we make use of
`importlib.machinery.ModuleSpec` which was introduced in 3.4 and at this moment
we don't want to backport and support this for Python 3.3. The rest of the code
is 3.3 compatible though.


During September I have also worked on
[django-chartit v0.2.7]({filename}2016-09-14-django-chartit-0.2.7.markdown) to fix
a nasty [recursion loop]({filename}2016-09-15-beware-recursion-loop-super.markdown)
bug. The follow up of this bug is 
[pylint #1109](https://github.com/PyCQA/pylint/pull/1109), which is now merged
into master!


I hope you like my work and please
**[subscribe to Mr. Senko]({filename}pages/subscribe.html)**
if you need faster response cycle for the open source libraries you use.
