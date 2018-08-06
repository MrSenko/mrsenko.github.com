Title: Kiwi TCMS bug-fix update
headline: version 5.1-ee-806
date: 2018-08-06 22:20
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** 5.1-ee-806
**Released on:** 2018-08-06
**Severity:** High
**URL:** <http://kiwitcms.org/>

Details
-------

This release updates to the latest django-report-builder version due to
issues with missing JavaScript files in earlier versions of this package.
This is an Enterprise Edition release, available only to Mr. Senko subscribers.
Docker images:

    mrsenko/kiwi        5.1-ee-806          af59f36067cb
    mrsenko/kiwi        latest              af59f36067cb


Changes since KiwiTCMS 5.1
---------------------------

- Upgrade to [django-report-builder 6.2.2](https://github.com/burke-software/django-report-builder/issues/295)


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** to get access to
our private Docker repository and then

    docker-compose down
    docker pull mrsenko/kiwi
    docker pull centos/mariadb
    docker-compose up -d
    docker exec -it kiwi_web /Kiwi/manage.py migrate
