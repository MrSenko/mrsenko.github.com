Title: Nitrate enhancement update
headline: version 3.8.18.10
date: 2017-03-08 10:00
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.10
**Released on:** 2017-03-08
**Severity:** Low

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package is now available which fixes several bugs and
adds various enhancements.

Changelog since 3.8.18.09
-------------------------

- Rebased onto c696e62 from upstream
- Don't use deprecated `request.REQUEST`.
  [PR #156](https://github.com/Nitrate/Nitrate/pull/156) (Mr. Senko)
- Update tests and fix Travis CI core dump.
  [PR #168](https://github.com/Nitrate/Nitrate/pull/168),
  [Issue #161](https://github.com/Nitrate/Nitrate/issues/161) (Mr. Senko)


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade nitrate
