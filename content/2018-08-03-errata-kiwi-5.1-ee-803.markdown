Title: Kiwi TCMS security and enhancement update
headline: version 5.1-ee-803
date: 2018-08-03 22:00
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** 5.1-ee-803
**Released on:** 2018-08-03
**Severity:** Medium
**URL:** <http://kiwitcms.org/>

Details
-------

This release updates to the latest Django version due to a moderate security
issue, fixes several bugs and removes unnecessary application code.
This is an Enterprise Edition release, available only to Mr. Senko subscribers.
Docker images:

    mrsenko/kiwi        5.1-ee-803          334884936c46
    mrsenko/kiwi        latest              334884936c46


Changes since KiwiTCMS 5.1
---------------------------

- Upgrade to [Django 2.1](https://docs.djangoproject.com/en/2.1/releases/2.1/)
- The first registered user will become superuser
- Remove `UserProfile` model. User profiles are now served via the default
  user admin views
- Do not require login for password reset pages
- Remove the `AUTHENTICATION_BACKENDS` setting because we use the default
  backend now
- `USER_REGISTERED_SIGNAL` now doesn't receive the `backend` parameter
- Remove unused get_using_backend(). Fixes
  [Issue #261](https://github.com/kiwitcms/Kiwi/issues/261)
- Remove `dj_pagination`. Fixes
  [Issue #110](https://github.com/kiwitcms/Kiwi/issues/110)
- `PAGINATION_DEFAULT_PAGINATION` setting is also removed
- Updated translation strings


How to upgrade
---------------

**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)** to get access to
our private Docker repository and then

    docker-compose down
    docker pull mrsenko/kiwi
    docker pull centos/mariadb
    docker-compose up -d
    docker exec -it kiwi_web /Kiwi/manage.py migrate
