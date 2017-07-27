Title: KiwiTestPad enhancement update
headline: version 3.30
date: 2017-07-27 23:35
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.30
**Released on:** 2017-07-27
**Severity:** High
**URL:** <http://MrSenko.com/kiwi/>

Details
-------

KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as Bugzilla and JIRA integration,
fast test plan and runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release is updated to Django 1.9.13 and includes updates for all other
3rd party dependencies as well as other improvements.

Changes since KiwiTestPad 3.28
------------------------------

- Upgrade Django to 1.9.13 (Mr. Senko)
- Upgrade all other requirements to their latest versions (Mr. Senko)
- Fix bug in `class BlobField` where database engine is not examined
  correctly (Mr. Senko)
- Replace `SQLExecution` with ORM queries (Mr. Senko)
- Improve test assertions so they don't fail when database returns
  records in arbitrary order (Mr. Senko)

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
