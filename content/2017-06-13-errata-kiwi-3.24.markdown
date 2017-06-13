Title: KiwiTestPad enhancement update
headline: version 3.24
date: 2017-06-13 10:43
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.24
**Released on:** 2017-06-13
**Severity:** High
**URL:** <http://MrSenko.com/kiwi/>

Details
-------


KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as Bugzilla and JIRA integration,
fast test plan and runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release removes many obsoleted dependencies and adds integration with
JIRA and GitHub issue trackers.


Changes since KiwiTestPad 3.23
------------------------------

- Removed dependency on Celery and django-celery. The following configuration
  settings have been removed: `BROKER_URL`, `CELERY_TASK_RESULT_EXPIRES`,
  `CELERY_RESULT_BACKEND`, `CELERYD_TIMER_PRECISION`, `CELERY_IGNORE_RESULT`,
  `CELERY_MAX_CACHED_RESULTS`, `CELERY_DEFAULT_RATE_LIMIT` (Mr. Senko)
- Refactoring of internal email sending capabilities. The following configuration
  settings have been removed: `EMAILS_FOR_DEBUG` (replaced by `ADMINS`),
  `ENABLE_ASYNC_EMAIL` (Mr. Senko)
- Removed integration with *Errata System* and removed the `ERRATA_URL_PREFIX`
  setting. Fixes [Issue #15](https://github.com/MrSenko/Kiwi/issues/15) (Mr. Senko)
- Removed dependency on qpid-python and QPID integration which has been disabled
  for a long time and most likely not working. This also removes the
  `ENABLE_QPID` setting.
- Removed dependency on kerberos with instructions how to add it back and enable
  it if required (Mr. Senko)
- Removed dependency on Kobo. Fixes
  [Issue #15](https://github.com/MrSenko/Kiwi/issues/5) Mr. Senko)
- Add missing integrations for JIRA. It is now possible to link failed Test Case(s)
  to JIRA Issues and Report new issues with pre-filled information from the test case!
  Fixes [Issue #2](https://github.com/MrSenko/Kiwi/issues/2) (Mr. Senko)
- Add more tests (Chenxiong Qi)
- Add integration with GitHub issues. Fixes
  [Issue #4](https://github.com/MrSenko/Kiwi/issues/4) (Mr. Senko)

**IMPORTANT:** this release introduces new database migrations!


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade kiwitestpad

If you are using KiwiTestPad as a Docker container then

    docker-compose stop
    docker rm kiwi_web kiwi_db
    docker-compose up -d
    docker exec -it kiwi_web /Kiwi/manage.py migrate

**NOTE** you will need the appropriate version of
[docker-compose.yml](https://github.com/MrSenko/kiwi-docker/blob/master/docker-compose.yml)
and the `mrsenko/kiwi` Docker image for the above commands to work!
