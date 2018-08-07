Title: Kiwi TCMS enhancement update
headline: version 5.2-ee
date: 2018-08-07 23:30
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** 5.2-ee
**Released on:** 2018-08-07
**URL:** <http://kiwitcms.org/>

Details
-------

This is an Enterprise Edition release, available only to Mr. Senko subscribers.
Docker images:

    mrsenko/kiwi        5.2-ee          cc9bf54d3638
    mrsenko/kiwi        latest          cc9bf54d3638


Changes
-------

- Based on upstream [Kiwi TCMS v5.2](http://kiwitcms.org/blog/kiwi-tcms-team/2018/08/07/kiwi-tcms-52/)
- Docker image now running with uid 1001 instead of root
- Provides [python-social-auth login backend](http://python-social-auth-docs.readthedocs.io/en/latest/backends/index.html#supported-backends)


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** to get access to
our private Docker repository and then

    docker-compose down
    docker pull mrsenko/kiwi
    docker pull centos/mariadb
    docker-compose up -d
    docker exec -it kiwi_web /Kiwi/manage.py migrate
