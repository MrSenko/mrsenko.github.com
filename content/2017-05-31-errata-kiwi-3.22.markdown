Title: KiwiTestPad bug-fix and enhancement update
headline: version 3.22
date: 2017-05-31 12:30
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.22
**Released on:** 2017-05-31
**Severity:** Medium
**URL:** <http://MrSenko.com/kiwi/>

Details
-------


KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

This release brings several bug fixes as well as lots of internal improvements
to facilitate migration to latest Django versions and Python 3 in the near future.


Changes since KiwiTestPad 3.21.2
--------------------------------

- Multiple refactorings of deprecated Django features (Mr. Senko)
- Added more tests (Chenxiong Qi)
- Replace deprecated XML2Dict with xmltodict. Fixes
  [Issue #10](https://github.com/MrSenko/Kiwi/issues/10) (Mr. Senko)
- Use mysqlclient instead of MySQL-python. Fixes
  [Issue #14](https://github.com/MrSenko/Kiwi/issues/14) (Mr. Senko)
- Make TestCase changelog display state changes using their names. Fixes
  [Issue #9](https://github.com/MrSenko/Kiwi/issues/9) (Mr. Senko)
- Multiple documentation improvements, including documentation of all
  configuration settings (Mr. Senko)


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade kiwitestpad

If you are using KiwiTestPad as a Docker container then

    docker-compose stop
    docker rm kiwi_web_1 kiwi_db_1
    docker-compose up -d
    docker exec -it kiwi_web_1 /Kiwi/manage.py migrate

**NOTE** you will need the appropriate version of
[docker-compose.yml](https://github.com/MrSenko/Kiwi/blob/master/docker-compose.yml)
and the `mrsenko/kiwi` Docker image for the above commands to work!
