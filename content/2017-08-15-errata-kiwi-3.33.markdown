Title: KiwiTestPad enhancement and bug-fix update
headline: version 3.33
date: 2017-08-15 10:30
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.33
**Released on:** 2017-08-15
**Severity:** Medium
**URL:** <http://MrSenko.com/kiwi/>

Details
-------

KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as Bugzilla and JIRA integration,
fast test plan and runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release is updated to Django 1.11.4 and includes several other bug-fixes and
updates.

Changes since KiwiTestPad 3.32
------------------------------

- Update Django to 1.11.4 (Mr. Senko)
- Many other updates related to deprecated features in Django (Mr. Senko)
- Fix a bug where the tab menu Bugs -> Remove didn't remove bugs from
  the currently opened test run (Mr. Senko)
- Make use of versioned static files which helps users see updates to
  the JavaScript and CSS files which are cached inside the browser. Fixes
  [Issue #6](https://github.com/MrSenko/Kiwi/issues/6) (Mr. Senko)


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade kiwitestpad

If you are using KiwiTestPad as a Docker container then

    docker-compose stop
    docker rm kiwi_web kiwi_db
    docker pull mrsenko/kiwi
    docker-compose up -d
    docker exec -it kiwi_web /Kiwi/manage.py migrate

**NOTE** you will need the appropriate version of
[docker-compose.yml](https://github.com/MrSenko/kiwi-docker/blob/master/docker-compose.yml)
and the `mrsenko/kiwi` Docker image for the above commands to work!
