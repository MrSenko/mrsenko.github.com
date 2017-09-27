Title: Introducing Patternfly based UI for Kiwi TCMS
headline: version 3.39
date: 2017-09-27 14:10
comments: true
Author: Mr. Senko
Tags: Python, errata
twitter_image: images/kiwitcms/dashboard_patternfly_twitter.png

**Version:** kiwitcms-3.39
**Released on:** 2017-09-27
**Severity:** High
**URL:** <http://MrSenko.com/kiwi/>

Details
-------

KiwiTCMS is the leading open source test plan, test run and test case management system!
It has a lot of great features, such as Bugzilla, JIRA and GitHub integration,
fast test plan and test runs search, powerful access control for each plan, run and case,
and XML-RPC APIs.

This release introduces a glimpse of the new look and feel of Kiwi TCMS. We're going to
fully update the UI using the Patternfly library. Since this will take a while we've
decided to make the change gradually, few screens at a time. Here's how it looks at
the moment

![New KiwiTCMS dashboard](/images/kiwitcms/dashboard_patternfly.png "New KiwiTCMS dashboard")

---

![New KiwiTCMS login](/images/kiwitcms/login_patternfly.png "New KiwiTCMS login")

Changes since KiwiTCMS 3.37
---------------------------

- Introduce modern UI elements using Patternfly library!
  Main navigation, login and password reset pages are
  currently implemented. NOTE: main navigation is placed
  inside an iframe to workaround issues with the legacy
  JavaScript on other pages. These will be fixed in the future
  and the iframe will be removed! (Mr. Senko)
- Piwik integration has been removed together with the following settings
  `ENABLE_PIWIK_TRACKING`, `PIWIK_SITE_ID`, `PIWIK_SITE_API_URL`,
  `PIWIK_SITE_JS_URL` (Mr. Senko)
- `USER_GUIDE_URL` setting has been removed. You can specify this configuration
  directly in `FOOTER_LINKS` (Mr. Senko)
- Added missing templates and views for password reset functionality (Mr. Senko)
- Makefile updates and flake8 fixes (Mr. Senko)

Additional bug fixes:

- Test Case EDIT and CLONE buttons are now working again (Mr. Senko)
- More tests and better handling of input parameters when loading builds
  (Mr. Senko)
- Load more of the required JavaScript and CSS files for admin forms (Mr. Senko)


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
