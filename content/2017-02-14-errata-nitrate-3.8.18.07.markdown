Title: Nitrate enhancement update
headline: version 3.8.18.07
date: 2017-02-14 10:30
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.07
**Released on:** 2017-02-14
**Severity:** Medium

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package is now available that adds various enhancements.

Changelog since 3.8.18.05
-------------------------

- Rebased onto 82625f1 from upstream
- Add documentation about installation with Apache and virtualenv.
  [PR #137](https://github.com/Nitrate/Nitrate/pull/137) (Mr. Senko)
- Replace hard-coded SQL statements with ORM queries. Improves portability
  between database backends.
  [PR #139](https://github.com/Nitrate/Nitrate/pull/139) (Mr. Senko)
- Use version from module, not txt file. Version is now shown in
  Nitrate footer.
  [PR #145](https://github.com/Nitrate/Nitrate/pull/145) (Mr. Senko)

How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!
