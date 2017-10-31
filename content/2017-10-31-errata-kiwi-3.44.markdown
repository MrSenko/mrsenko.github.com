Title: Kiwi TCMS bug-fix and enhancement update
headline: version 3.44-ee
date: 2017-10-31 13:00
comments: true
Author: Mr. Senko
Tags: Python, errata

**Version:** kiwitcms-3.44-ee
**Released on:** 2017-10-31
**Severity:** High
**URL:** <http://MrSenko.com/kiwi/>

Details
-------

KiwiTCMS is the leading open source test plan, test run and test case management system!
It has a lot of great features, such as Bugzilla, JIRA and GitHub integration,
fast test plan and test runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release introduces several bug-fixes and updates the documentation with
newer screenshots and better explanations how to run Kiwi TCMS in production
and locally for development.


Changes since KiwiTCMS 3.41
---------------------------

- Use correct django_comment permission name. Allows non-admin users to enter
  comments. Fixes [Issue #74](https://github.com/MrSenko/Kiwi/issues/74>) (Mr. Senko)
- Fix 500 ISE when viewing other user profiles (Mr. Senko)
- Add a more visible link to account registration in the MOTD section
  of the login page (Mr. Senko)
- Use correct permission names when editting Test Plan Environment Group field.
  Fixes [Issue #73](https://github.com/MrSenko/Kiwi/issues/73) (Mr. Senko)
- Update how we render the XMLRPC info page. Fixes
  [Issue #80](https://github.com/MrSenko/Kiwi/issues/80) (Mr. Senko)
- Rename `FOOTER_LINKS` setting to `HELP_MENU_ITEMS` (Mr. Senko)
- Update documentation with new screenshots (Mr. Senko)
- Make documentation more lear on how to run Kiwi TCMS both in production
  and in local development mode. Fixes
  [Issue #89](https://github.com/MrSenko/Kiwi/issues/89) (Mr. Senko)


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
