Title: Nitrate bug-fix and enhancement update
headline: version 3.8.18.18
date: 2017-05-01 15:00
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.18
**Released on:** 2017-05-01
**Severity:** High
**URL:** <http://MrSenko.com/nitrate/>

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package and Docker image are now available which fix several bugs
and introduce big improvements related to using external bug trackers with Nitrate!
Further improvements related to bugtracker integration will be available in the
next release.


Changes since 3.8.18.17
-----------------------

- Rebased onto a2363f8 from upstream
- Add default permissions to groups.
  [PR #191](https://github.com/Nitrate/Nitrate/pull/191) (Mr. Senko)
- Fix
  [Issue #186](https://github.com/Nitrate/Nitrate/issues/186):
  Errata field visible when `ERRATA_URL_PREFIX` is empty.
  [PR #188](https://github.com/Nitrate/Nitrate/pull/188) (Mr. Senko)
- Fix
  [Issue #181](https://github.com/Nitrate/Nitrate/issues/181):
  Failed to delete testplan or product.
  [PR #182](https://github.com/Nitrate/Nitrate/pull/182) (Mr. Senko)
- Add link to Administration guide in footer (Mr. Senko)
- Update MOTD displayed on login/registration form (Mr. Senko)
- Updated RPMs inside Docker image (Mr. Senko)
- Use bug trackers defined in the DB.
  [PR #79](https://github.com/Nitrate/Nitrate/pull/79) (Mr. Senko)

**NOTE**: this release introduces new database migrations so don't forget to
execute `./manage.py migrate`!

Open upstream issues
---------------------

The following issues and pull requests, which have been previously released on
Mr. Senko, are still open in the upstream repository:

- [PR #45](https://github.com/Nitrate/Nitrate/pull/45) -
  fix: showing priorities in advanced search in hardcode (RhBug:1139932)
- [PR #79](https://github.com/Nitrate/Nitrate/pull/79) -
  Use bug trackers defined in the DB
- [PR #139](https://github.com/Nitrate/Nitrate/pull/139) -
  Refactor SQL and use ORM queries instead
- [PR #146](https://github.com/Nitrate/Nitrate/pull/146) -
  Replace SQL with ORM in reporting app. Fix #127
- [PR #171](https://github.com/Nitrate/Nitrate/pull/171) -
  Enable testing with MySQL and Postgres on Travis-CI
- [PR #172](https://github.com/Nitrate/Nitrate/pull/172) -
  Refactor sql in testplans
- [PR #177](https://github.com/Nitrate/Nitrate/pull/177) -
  Refactor SQL in testcases and fix #174
- [PR #178](https://github.com/Nitrate/Nitrate/pull/178) -
  Fix tags search and hint while adding tags to test cases in TP
- [PR #180](https://github.com/Nitrate/Nitrate/pull/180) -
  Build Nitrate as docker image
- [Issue #127](https://github.com/Nitrate/Nitrate/issues/127) -
  Make SQL statements be compatible with PostgreSQL
- [Issue #169](https://github.com/Nitrate/Nitrate/issues/169) -
  Add MySQL, MariaDB and PostgreSQL to Travis CI test matrix
- [Issue #174](https://github.com/Nitrate/Nitrate/issues/174) -
  Error when remove tag from a plan's case
- [Issue #181](https://github.com/Nitrate/Nitrate/issues/181) -
  Failed to delete testplan or product
- [Issue #186](https://github.com/Nitrate/Nitrate/issues/186) -
  Errata field visible when `ERRATA_URL_PREFIX` is empty


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade nitrate

If you are using Nitrate as a Docker container then

    docker-compose stop
    docker rm nitrate_web_1 nitrate_db_1
    docker-compose up -d
    docker exec -it nitrate_web_1 /Nitrate/manage.py migrate

**NOTE** you will need the appropriate version of
[docker-compose.yml](https://github.com/MrSenko/Nitrate/blob/version_3.8.18/docker-compose.yml)
for the above commands to work!
