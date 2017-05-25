Title: Nitrate enhancement update
headline: version 3.8.18.21
date: 2017-05-25 10:00
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** nitrate-3.8.18.21
**Released on:** 2017-05-25
**Severity:** High
**URL:** <http://MrSenko.com/nitrate/>

Details
-------

Nitrate is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Updated Nitrate package and Docker image are now available which introduce
several improvements. Among them is the full ability to configure external
issue trackers via the Admin menu and allow functional integration between
Nitrate and issue trackers. This release supports full integration with
Bugzilla. Full integration with JIRA will be available in upcoming releases.


Changes since 3.8.18.18
-----------------------

- Rebased onto f7e2c6c from upstream which includes
    - PRs #197, #198, #199, #200, #201, #202, #204: removal of deprecated
      `request.REQUEST` and more tests (tkdchen)
    - [PR #203](https://github.com/Nitrate/Nitrate/pull/203): Minor fixes
      (Mr. Senko)
- Fixed failing test cases on PostgreSQL and MySQL (Mr. Senko)
- Remove unused doctest. PR #205 (tkdchen)
- Fixes [Issue #185](https://github.com/Nitrate/Nitrate/issues/185):
  Improve integrations between Nitrate and external bug tracking systems
  (Mr. Senko). In particular:
    - removed all hard-coded issue tracker settings
    - allow issue trackers to be configured entirely in the DB
    - re-implemented the functionality to open all bugs inside
      the issue tracker by clicking a single link at the bottom
      of the test run reports page
    - re-implemented the "Check to add test case(s) to Issue Tracker"
      checkbox when adding a bug to a test case run
    - re-implemented the "Report" bug functionality, which will pre-load
      the chosen Issue Tracker with information about the test case
      which was used to discover the bug.
    - NOTE: full integration is available only for Bugzilla.
- Issue trackers are documented in the
[Administration Guide](http://nitrate-mrsenko.readthedocs.io/en/latest/guide/admin.html#adding-bug-trackers)

**NOTE**: this release introduces new database migrations so don't forget to
execute `./manage.py migrate`!

**NOTE**: this release includes updated static files so don't forget to
execute `./manage.py collectstatic`!

**NOTE**: this release introduces a new configuration setting called
`NITRATE_BASE_URL`. It defines the FQDN of your Nitrate instance!
This setting is used to construct a URL linking back to test
cases and test runs when reporting bugs!


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
[docker-compose.yml](https://github.com/MrSenko/Nitrate/blob/master/docker-compose.yml)
for the above commands to work!
