Title: KiwiTestPad enhancement update
headline: version 3.23
date: 2017-06-06 14:03
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.23
**Released on:** 2017-06-06
**Severity:** Medium
**URL:** <http://MrSenko.com/kiwi/>

Details
-------


KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

This release makes it possible to customize all product settings and override the
Docker image to suit your needs.


Changes since KiwiTestPad 3.22
------------------------------

- Docker compose is now hosted at <https://github.com/MrSenko/kiwi-docker>
  with the ability to customize all settings and the Docker image itself
  (Mr. Senko)
- Trimmed down the contents of the Docker image - removed unnecessary RPM
  packages (Mr. Senko)


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
