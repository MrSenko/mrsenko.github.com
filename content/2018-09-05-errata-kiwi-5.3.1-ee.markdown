Title: Kiwi TCMS update
headline: version 5.3.1-ee
date: 2018-09-05 14:55
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** 5.3.1-ee
**Released on:** 2018-09-05
**URL:** <http://kiwitcms.org/>

Details
-------

This is an Enterprise Edition release, available only to Mr. Senko subscribers.
Docker images:

    mrsenko/kiwi         5.3.1-ee            ce5329930acf        1.108 GB
    mrsenko/kiwi         latest              ce5329930acf        1.108 GB


Changes
-------

- Based on upstream [Kiwi TCMS v5.3.1](http://kiwitcms.org/blog/kiwi-tcms-team/2018/09/04/kiwi-tcms-531/)


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** to get access to
our private Docker repository and then

    docker-compose down
    docker pull mrsenko/kiwi
    docker pull centos/mariadb
    docker-compose up -d
    docker exec -it kiwi_web /Kiwi/manage.py migrate
