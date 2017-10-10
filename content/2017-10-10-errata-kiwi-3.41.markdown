Title: Kiwi TCMS bug-fix and database update
headline: version 3.41-ee
date: 2017-10-10 11:40
comments: true
Author: Mr. Senko
Tags: Python, errata
twitter_image: images/kiwitcms/dashboard_patternfly_twitter.png

**Version:** kiwitcms-3.41-ee
**Released on:** 2017-10-10
**Severity:** High
**URL:** <http://MrSenko.com/kiwi/>

Details
-------

KiwiTCMS is the leading open source test plan, test run and test case management system!
It has a lot of great features, such as Bugzilla, JIRA and GitHub integration,
fast test plan and test runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release removes some unused code, introduces a few bug-fixes and most importantly
updates the MariaDB docker image to take full advantage of UTF8 strings!

Changes since KiwiTCMS 3.39
---------------------------

- Upon registration assign default group permissions if none set.
  Also by default make all users have the `is_staff` permission
  so they can add Products, Builds, Versions, etc. via the ADMIN menu
  (Mr. Senko)
- Update documentation (Mr. Senko)
- Remove unused `plugins_support/` directory (Mr. Senko)
- Remove unused models in `tcms.profiles`. The `Profiles`,
  `Groups` and `UserGroupMap` models are removed because they are
  not used (Mr. Senko)
- Remove max_length=30 limitation for EmailField in RegistrationForm.
  Fixes [Issue #71](https://github.com/MrSenko/Kiwi/issues/71) (Mr. Senko)
- Display error messages on login form (Mr. Senko)
- Update main navigation to indicate login is required before creating
  Test Plan (Mr. Senko)

**WARNING**

MariaDB defaults are to use `latin1` as the default character set and collation.
This will lead to 500 internal server errors when trying to save data which
does not use ASCII characters. This is a limitation with the underlying CentOS/MariaDB
docker image and [has been fixed upstream](https://github.com/CentOS/CentOS-Dockerfiles/pull/146).
Update your docker image by running:

    docker pull centos/mariadb

You need to manually update your existing databases by using the following instructions:

    bash-4.2$ mysql -u root -p
    Enter password: 
    
    MariaDB [(none)]> ALTER DATABASE kiwi CHARACTER SET utf8 COLLATE utf8_unicode_ci;
    Query OK, 1 row affected (0.00 sec)
    
    bash-4.2$ mysql -D kiwi -u root -p -B -N -e "SHOW TABLES" | awk '{print "ALTER TABLE", $1, "CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;"}' > /tmp/alter_charset.txt
    Enter password: 
    
    bash-4.2$ cat /tmp/alter_charset.txt | mysql -D kiwi -u root -p
    Enter password: 

You can use the `SHOW TABLE STATUS;` query to see the current settings for your tables!


**IMPORTANT:** this release introduces new database migrations!


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** and
[configure your private PyPI repositories]({filename}2017-01-22-private-pypi.markdown)
before upgrading!

    pip install --upgrade kiwitcms

If you are using KiwiTCMS as a Docker container then

    docker-compose down
    docker pull mrsenko/kiwi
    docker-compose up -d
    docker exec -it kiwi_web /Kiwi/manage.py migrate

**NOTE** you will need the appropriate version of
[docker-compose.yml](https://github.com/MrSenko/kiwi-docker/blob/master/docker-compose.yml)
and the `mrsenko/kiwi` Docker image for the above commands to work!
