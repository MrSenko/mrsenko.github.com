Title: KiwiTestPad bug-fix and enhancement update
headline: version 3.28
date: 2017-07-11 14:35
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.28
**Released on:** 2017-07-11
**Severity:** Medium
**URL:** <http://MrSenko.com/kiwi/>

Details
-------

KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as Bugzilla and JIRA integration,
fast test plan and runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release removes all remaining instances of the deprecated `request.REQUEST` object,
adds more tests and fixes several bugs.


Changes since KiwiTestPad 3.26
------------------------------

- Replace w3m cmd line tool with html2text. Fixes
  [Issue #7](https://github.com/MrSenko/Kiwi/issues/7) (Mr. Senko)
- Disable bug reporting if Issue Tracker base_url is empty (Mr. Senko)
- Don't link TC to Issue Trackers if required parameters not present.
  By default these are `api_url`, `api_username` and `api_password`.
  For GitHub they are `base_url` and `api_password`. Fixes
  [Issue #3](https://github.com/MrSenko/Kiwi/issues/3) (Mr. Senko)
- Don't add component to testcase if component already exists. Fixes
  [Issue #13](https://github.com/MrSenko/Kiwi/issues/13) (Mr. Senko)
- Add more tests (Chenxiong Qi)
- Replace deprecated `request.REQUEST` (Chenxiong Qi, Mr. Senko)



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
