Title: What I've worked on in November 2016
headline: Cosmic Ray, pylint, django-chartit
date: 2016-11-30 17:30
comments: true
Author: Alexander Todorov
Tags: Python

Hello everyone, during November I've been focusing on
Cosmic Ray, pylint.

The changes include

* Cosmic Ray will not fail if baseline test execution fails, see
  [PR #181](https://github.com/sixty-north/cosmic-ray/pull/181);
* Cosmic Ray refactoring in skipping mutations to self, see
  [PR #180](https://github.com/sixty-north/cosmic-ray/pull/180);
* Added new checker to pylint. Statements using `len(SEQUENCE)` are
  checked more thoroughly. If there are comparisons to 0 these should
  be refactored. See [PR #1154](https://github.com/PyCQA/pylint/pull/1154).
* Fixed small pylint typo;
* Started work on support for `RawQuerySet` in django-chartit. This also alignes
  with support for model properties. There is a POC solution proposed to
  requesters and waiting for feedback. New version of django-chartit will be released
  very soon, see [#44](https://github.com/chartit/django-chartit/issues/44) and
  [#35](https://github.com/chartit/django-chartit/issues/35).


I hope you like my work and please
**[subscribe to Mr. Senko]({filename}pages/subscribe.html)**
if you need faster response cycle for the open source libraries you use.
