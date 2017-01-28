Title: Nitrate enhancement update
headline: version 3.8.18.05
date: 2017-01-31 09:30
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.05
**Released on:** 2017-01-31
**Severity:** Low

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package is now available that adds various enhancements.

Changelog since 3.8.18.04
-------------------------

- Rebased onto 698288e from upstream (Mr. Senko)
- Enable internal tests
- Drop support for Python 2.6 (Mr. Senko)
- Update help strings of clone case form and update docs. Fix
  [#67](https://github.com/Nitrate/Nitrate/issues/67) (Mr. Senko)
- Updated documentation with sections about hosting with
  Gunicorn, Docker and Google Cloud Engine (Mr. Senko)
- Django migrations improvements
- Upgrade Django to 1.8.14

How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!
