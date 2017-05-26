Title: Nitrate is now KiwiTestPad
headline: why we forked and what to expect
date: 2017-05-26 12:30
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitestpad-3.21.2
**Released on:** 2017-05-26
**Severity:** High
**URL:** <http://MrSenko.com/kiwi/>

Details
-------


KiwiTestPad is an open source test plan, test run and test case management system.
It has a lot of great features, such as
Bugzilla and JIRA integration, QPID integration, fast test plan and runs search,
powerful access control for each plan, run and case, and XMLRPC APIs.

Starting with this release the product will be available under the name
**KiwiTestPad** with an upstream repository at <https://github.com/MrSenko/Kiwi/>.

We have been working actively with the upstream Nitrate project in the past
several months. However the community is practically unresponsive and without
a clear vision how to develop in the future. The PR velocity is very slow and
pull requests have been opened for months and years. This is why at Mr. Senko
we have decided to fork the project completely and drive the new community on our
own!

The most important changes you can expect in the short-term future are
complete integration with JIRA and GitHub,
improvements to documentation, improved support for running as Docker container,
migration to latest Django versions and migration to Python 3, cleaning up of
obsolete dependencies and streamlining the process of creating customized
configuration of KiwiTestPad, improved visual design and simplified UX!



Changes since Nitrate 3.8.18.21
-------------------------------

- `NITRATE_BASE_URL` has been renamed to `KIWI_BASE_URL`
- Use `/tmp/.bugzilla` for python-bugzilla cache to avoid 500 ISE
  when running as Docker container


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
