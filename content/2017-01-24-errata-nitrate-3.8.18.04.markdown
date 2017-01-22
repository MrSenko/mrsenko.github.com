Title: Nitrate bug fix and enhancement update
headline: version 3.8.18.04
date: 2017-01-24 09:30
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.04
**Released on:** 2017-01-24

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package is now available that adds various enhancements and
bug fixes.

Changelog
----------

- Don't hard-code priorities in advanced search.
  [PR #45](https://github.com/Nitrate/Nitrate/pull/45),
  fixes [RhBz #1139932](https://bugzilla.redhat.com/show_bug.cgi?id=1139932) (Chenxiong Qi)
- Update to Django 1.8.11. [PR #81](https://github.com/Nitrate/Nitrate/pull/81) (Mr. Senko)
- Update django-tinymce to 2.4.0
- Minor updates to documentation.
  [PR #100](https://github.com/Nitrate/Nitrate/pull/100) (Matthias Cavigelli)
- Update link to wadofstuff-django-serializers.
  PR [#101](https://github.com/Nitrate/Nitrate/pull/101),
  fixes [#99](https://github.com/Nitrate/Nitrate/issues/99) (Mr. Senko)
- Require Celery<2 for compatibility reasons.
  [PR #102](https://github.com/Nitrate/Nitrate/pull/102) (Mr. Senko)
- Host static files in DEBUG mode for development.
  [PR #103](https://github.com/Nitrate/Nitrate/pull/103) (Mr. Senko)
- flake8 fixes. [PR #104](https://github.com/Nitrate/Nitrate/pull/104) (Mr. Senko)



How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!
