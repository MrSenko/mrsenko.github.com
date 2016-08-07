Title: Reviving django-chartit with version 0.2.4
headline: compatible with Python 3 and Django 1.10
date: 2016-08-02 14:50
comments: true
Tags: Python, Django

[django-chartit](https://github.com/chartit/django-chartit) is a Django app
that can be used to easily create charts from the data in your database. The
charts are rendered using `Highcharts` and `jQuery` JavaScript libraries.
Data in your database can be plotted as simple line charts, column charts,
area charts, scatter plots, and many more chart types.

The project has been originally developed by
[Praveen Gollakota](https://github.com/pgollakota) and had gained some
popularity. Recently Mr. Senko was granted the necessary access rights
and we've revived the project with two upstream releases.

Changelog
---------

Version 0.2.3 was released a few days ago and merges the `django-chartit2` fork by
[Grant McConnaughey](https://github.com/grantmcconnaughey) which had a few
releases of its own earlier this year. It also makes a few improvements and merged
other pull requests.

Version 0.2.4 was released today and fixes the usage of deprecated Django
APIs which were removed in Django 1.10.

Many thanks to Grant for his work on Python 3 and latest Django support!
Many thanks to Praveen for letting us maintain the project.

Upgrade from django_chartit2
----------------------------

If you are using the `django_chartit2` module by Grant then you have to

    pip uninstall django_chartit2
    pip install django_chartit

If you are not in a hurry to upgrade you may as well wait for the next
release by Grant, which should automatically require `django_chartit`
and transparently switch you back to using the original package and not
the fork. However release of such an update is not under our control.


Feature plans
-------------

Mr. Senko is currently working actively to bring the rest of the project
up to speed, including the demo site, which shows how to use the API.
This is a mandatory step before we go ahead to work on various bug fixes
and documentation improvements. We will also be looking into adding more
tests for the project.

Support
--------

At Mr. Senko we will do our best to accommodate every need and merge patches
and feature requests as they come in. Should you need commercial support for
this or other open source libraries please
**[subscribe to Mr. Senko's support service]({filename}pages/subscribe.html)**!
