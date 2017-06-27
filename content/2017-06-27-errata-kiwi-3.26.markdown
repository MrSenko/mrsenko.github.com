Title: KiwiTestPad enhancement update
headline: version 3.26
date: 2017-06-27 14:45
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.26
**Released on:** 2017-06-27
**Severity:** Medium
**URL:** <http://MrSenko.com/kiwi/>

Details
-------


KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as Bugzilla and JIRA integration,
fast test plan and runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release removes many instances of the depracated `request.REQUEST` object,
adds more tests and provides more documentation about configuring email notifications.

Changes since KiwiTestPad 3.24
------------------------------

- Multiple replacements of deprecated `request.REQUEST` and more tests
  (Chenxiong Qi)
- Use the `EMAIL_SUBJECT_PREFIX` setting when sending emails (Mr. Senko)
- Document how to use an external email provider instead of SMTP with
  example for Amazon SES. Fixes
  [Issue #12](https://github.com/MrSenko/Kiwi/issues/12) (Mr. Senko)
- Remove the `KIWI_BASE_URL` configuration setting. The Administration
  Guide now includes a section called *Configure Kiwi’s base URL* which
  explains how to configure the base URL of your installation! (Mr. Senko)

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
