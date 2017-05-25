Title: Nitrate bug-fix and enhancement update
headline: version 3.8.18.17
date: 2017-04-24 13:00
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.17
**Released on:** 2017-04-24
**Severity:** Medium
**Documentation:** <http://nitrate-mrsenko.rtfd.io/>

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package is now available which introduces several fixes and
improvements. It is also possible to build and run Nitrate as a Docker image.
Further improvements for running in dockerized environment will be available
in the next release.

Changelog since 3.8.18.15
-------------------------

- Rebased onto a1c47ec from upstream
- Refactor SQL in testplans to ORM.
  [PR #172](https://github.com/Nitrate/Nitrate/pull/172) (Mr. Senko)
- Fix [Issue #174](https://github.com/Nitrate/Nitrate/issues/174) -
  Error when remove tag from a plan's cases (Mr. Senko)
- Refactor SQL in testcases to ORM.
  [PR #177](https://github.com/Nitrate/Nitrate/pull/177) (Mr. Senko)
- Improve tags search and fix hints while adding tags to selected test cases
  inside of a test plan. [PR #178](https://github.com/Nitrate/Nitrate/pull/178)
  (Mr. Senko)
- Update documentation about installation steps for RHEL6.
  [PR #179](https://github.com/Nitrate/Nitrate/pull/179) (Mr. Senko)
- Make it possible to build and run Nitrate as Docker image.
  [PR #180](https://github.com/Nitrate/Nitrate/pull/180) (Mr. Senko)


Open upstream issues
---------------------

The following issues and pull requests, which have been previously released on
Mr. Senko, are still open in the upstream repository:

- [PR #45](https://github.com/Nitrate/Nitrate/pull/45) -
  fix: showing priorities in advanced search in hardcode (RhBug:1139932) 
- [PR #139](https://github.com/Nitrate/Nitrate/pull/139) -
  Refactor SQL and use ORM queries instead 
- [PR #146](https://github.com/Nitrate/Nitrate/pull/146) -
  Replace SQL with ORM in reporting app. Fix #127
- [PR #156](https://github.com/Nitrate/Nitrate/pull/156) -
  Don't use deprecated request.REQUEST
- [PR #171](https://github.com/Nitrate/Nitrate/pull/171) -
  Enable testing with MySQL and Postgres on Travis-CI
- [PR #172](https://github.com/Nitrate/Nitrate/pull/172) -
  Refactor sql in testplans
- [PR #177](https://github.com/Nitrate/Nitrate/pull/177) -
  Refactor SQL in testcases and fix #174
- [PR #178](https://github.com/Nitrate/Nitrate/pull/178) -
  Fix tags search and hint while adding tags to test cases in TP
- [PR #179](https://github.com/Nitrate/Nitrate/pull/179) -
  Update installation steps for RHEL6
- [PR #180](https://github.com/Nitrate/Nitrate/pull/180) -
  Build Nitrate as docker image
- [Issue #127](https://github.com/Nitrate/Nitrate/issues/127) -
  Make SQL statements be compatible with PostgreSQL
- [Issue #169](https://github.com/Nitrate/Nitrate/issues/169) -
  Add MySQL, MariaDB and PostgreSQL to Travis CI test matrix
- [Issue #174](https://github.com/Nitrate/Nitrate/issues/174) -
  Error when remove tag from a plan's case


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade nitrate
