Title: Nitrate bug-fix & enhancement update
headline: version 3.8.18.09
date: 2017-02-28 15:00
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.09
**Released on:** 2017-02-28
**Severity:** High

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package is now available which fixes several bugs and
adds various enhancements.

Changelog since 3.8.18.08
-------------------------

- Rebased onto 7a6bc34 from upstream
- Enable the test suite. Fix
  [Issue #113](https://github.com/Nitrate/Nitrate/issues/113) (Chenxiong Qi)
- Refactor tcms.core.migrations.0001_django_comments__object_pk.
  Fixes a bug where applied migration was shown as still pending.
  [PR #157](https://github.com/Nitrate/Nitrate/pull/157) (Mr. Senko)
- Refactor SQLs in xmlrpc (with tests).
  [PR #159](https://github.com/Nitrate/Nitrate/pull/159) (Mr. Senko)
- Enable Coveralls.io.
  [PR #160](https://github.com/Nitrate/Nitrate/pull/160) (Mr. Senko)
- Don't install files under `/etc/` to avoid SandboxViolation. Enables
  installation in virtualenv and as non-root. Hot-fix for
  [Issue #155](https://github.com/Nitrate/Nitrate/issues/155) (Mr. Senko)


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade nitrate
