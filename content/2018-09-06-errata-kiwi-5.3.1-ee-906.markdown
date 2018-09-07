Title: Kiwi TCMS hot-fix update
headline: version 5.3.1-ee-906
date: 2018-09-06 22:20
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** 5.3.1-ee-906
**Released on:** 2018-09-06
**Severity:** High
**URL:** <http://kiwitcms.org/>

Details
-------

This release fixes a critical failure with localized test plan names
which was causing failure to display the dashboard page.
This is an Enterprise Edition release, available only to Mr. Senko subscribers.
Docker images:

    mrsenko/kiwi         5.3.1-ee-906        e77b623ebf6a        1.108 GB
    mrsenko/kiwi         latest              e77b623ebf6a        1.108 GB



Changes since KiwiTCMS 5.1
---------------------------

- Don't use `|slugify` filter in templates. Fix Sentry KIWI-TCMS-38



How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** to get access to
our private Docker repository and then

    docker-compose down
    docker pull mrsenko/kiwi
    docker pull centos/mariadb
    docker-compose up -d
    docker exec -it kiwi_web /Kiwi/manage.py migrate
