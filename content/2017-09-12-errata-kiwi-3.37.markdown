Title: Kiwi TCMS Python 3 and HTTPS update
headline: version 3.37
date: 2017-09-12 17:10
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.37
**Released on:** 2017-09-12
**Severity:** High
**URL:** <http://MrSenko.com/kiwi/>

Details
-------

KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as Bugzilla, JIRA and GitHub integration,
fast test plan and test runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release migrates Kiwi TCMS to Python 3 because Django will discontinue support
for Python 2 in the future. It also enables HTTPS by default, fixes a few bugs and
introduces several improvements.


Changes since KiwiTestPad 3.33
------------------------------

- Migrate to Python 3. Docker container uses Python 3.5 from
  SoftwareCollections.org (Mr. Senko)
- Docker container now uses self-signed HTTPS with options to specify custom
  certificates (Mr. Senko)
- Set MySQL mode to `STRICT_TRANS_TABLES` (Mr. Senko)
- Remove dependency on `django-preserialize` (Mr. Senko)
- Remove explicit dependency on `six` (Mr. Senko)
- Fix traceback while loading builds at test run creation (Mr. Senko)
- Populate product version when creating new Test Plan. Fixes
  [Issue #16](https://github.com/MrSenko/Kiwi/issues/16) (Mr. Senko)
- Initialize admin jQuery after jQuery has been loaded. Fixes a problem with
  popup windows not closing (Mr. Senko)
- Fix traceback when loading product versions if no products were
  defined (Mr. Senko)


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade kiwitestpad

If you are using KiwiTestPad as a Docker container then

    docker-compose down
    docker pull mrsenko/kiwi
    docker-compose up -d
    docker exec -it kiwi_web /Kiwi/manage.py migrate

**NOTE** you will need the appropriate version of
[docker-compose.yml](https://github.com/MrSenko/kiwi-docker/blob/master/docker-compose.yml)
and the `mrsenko/kiwi` Docker image for the above commands to work!
