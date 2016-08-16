Title: New release django-chartit 0.2.6
headline: bug fixes and code clean-up
date: 2016-08-16 11:00
comments: true
Tags: Python, Django

[django-chartit](https://github.com/chartit/django-chartit) is a Django app
that can be used to easily create charts from the data in your database. The
charts are rendered using `Highcharts` and `jQuery` JavaScript libraries.
Data in your database can be plotted as simple line charts, column charts,
area charts, scatter plots, and many more chart types.

Today we are releasing version 0.2.6 as part of our regular update process.

Changelog since version 0.2.4
------------------------------

* 0.2.6 (August 16, 2016)
    * Merged `chartit_tests/` with `demoproject/`
    * Load test DB with real data to use during testing
    * Add more tests
    * Update the path to `demoproject.settings` when building docs. Fixes
      a problem which caused some API docs to be empty
    * Fix `ValueError: not enough values to unpack (expected 2, got 0)`
      with PivotChart when the QuerySet returns empty data
    * Dropped requirement on `simplejson`
    * Properly handle unicode data in Pivot charts. Fixes
      [#5](https://github.com/chartit/django-chartit/issues/5)
    * Demo project updated with Chart and PivotChart examples of
      rendering DateField values on the X axis
    * Allow charting of `extra()` or `annotate()` fields. Fixes
      [#8](https://github.com/chartit/django-chartit/issues/8) and
      [#12](https://github.com/chartit/django-chartit/issues/12)
    * Refactor `RecursiveDefaultDict` to allow chart objects to be
      serialized to/from cache. Fixes
      [#10](https://github.com/chartit/django-chartit/issues/10)
    * Add information about supported 3rd party JavaScript versions. Fixes
      [#14](https://github.com/chartit/django-chartit/issues/14)

* 0.2.5 (August 3, 2016)
    * Workaround Python 3 vs. Python 2 list sort issue which breaks
      charts with multiple data sources displayed on the same axis!
    * Make demoproject/ compatible with Django 1.10



Support
--------

At Mr. Senko we will do our best to accommodate every need and merge patches
and feature requests as they come in. Should you need commercial support for
this or other open source libraries please
**[subscribe to Mr. Senko's support service]({filename}pages/subscribe.html)**!
