Title: Nitrate enhancement update
headline: version 3.8.18.15
date: 2017-04-12 23:00
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.15
**Released on:** 2017-04-12
**Severity:** Medium

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package is now available which removes one database migration.
`tcms.core.migrations.0001_django_comments__object_pk` is modifying a 3rd party
model and Django gets really confused about this! See the discussion in
[PR #157](https://github.com/Nitrate/Nitrate/pull/157) about why we've decided
to drop the migration!

Changelog since 3.8.18.12
-------------------------

- Rebased onto 8f45beb from upstream
- Remove tcms.core.migrations.0001_django_comments__object_pk

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
- [Issue #127](https://github.com/Nitrate/Nitrate/issues/127) -
  Make SQL statements be compatible with PostgreSQL
- [Issue #169](https://github.com/Nitrate/Nitrate/issues/169) -
  Add MySQL, MariaDB and PostgreSQL to Travis CI test matrix 


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade nitrate
