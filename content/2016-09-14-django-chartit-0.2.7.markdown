Title: New release django-chartit 0.2.7
headline: urgent bug fix
date: 2016-09-14 16:30
comments: true
Tags: Python, Django

[django-chartit](https://github.com/chartit/django-chartit) is a Django app
that can be used to easily create charts from the data in your database. The
charts are rendered using `Highcharts` and `jQuery` JavaScript libraries.
Data in your database can be plotted as simple line charts, column charts,
area charts, scatter plots, and many more chart types.

Today we are releasing version 0.2.7 as part of our regular update process.
This is an urgent bug fix update because previous versions broke subclassing
of `Chart` and `PivotChart` classes.

Changelog since version 0.2.6
------------------------------

 * Don't use `super(self.__class__)` b/c that breaks chart class inheritance.
    Fixes [#41](https://github.com/chartit/django-chartit/issues/41)

Support
--------

At Mr. Senko we will do our best to accommodate every need and merge patches
and feature requests as they come in. Should you need commercial support for
this or other open source libraries please
**[subscribe to Mr. Senko's support service]({filename}pages/subscribe.html)**!
