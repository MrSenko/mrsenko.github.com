Title: Nitrate enhancement update
headline: version 3.8.18.08
date: 2017-02-21 11:30
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.08
**Released on:** 2017-02-21
**Severity:** High

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package is now available that adds various enhancements.

Changelog since 3.8.18.07
-------------------------

- Replace hard-coded SQL statements with ORM queries inside the reporting
  module. This improves portability between database backends.
  [PR #146](https://github.com/Nitrate/Nitrate/pull/146), fixes
  [issue #127](https://github.com/Nitrate/Nitrate/issues/127) (Mr. Senko).

How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!
