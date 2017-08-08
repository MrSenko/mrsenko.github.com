Title: KiwiTestPad security and bug-fix update
headline: version 3.32
date: 2017-08-08 11:50
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.32
**Released on:** 2017-08-08
**Severity:** High
**URL:** <http://MrSenko.com/kiwi/>

Details
-------

KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as Bugzilla and JIRA integration,
fast test plan and runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release is updated to Django 1.10.7 and includes several other bug-fixes and
updates.

Changes since KiwiTestPad 3.30
------------------------------

- Upgrade Django to 1.10.7 (Mr. Senko)
- Replace unmaintained django-pagination with dj-pagination. Fixes
  [Issue #48](https://github.com/MrSenko/Kiwi/issues/48) (Mr. Senko)
- When activating new accounts check the expiration date of activation
  keys. Previously this was not checked (Mr. Senko)
- Fix a traceback when showing Plan -> Tree View (Mr. Senko)
- Fixed an issue where `Prompt.render` was wrapped within `HttpResponse`
  causing DB connections to be closed after view functions have returned (Mr. Senko)
- Refactored responses for AJAX calls (Chenxiong Qi)

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
