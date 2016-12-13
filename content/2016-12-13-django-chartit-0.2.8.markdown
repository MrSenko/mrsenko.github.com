Title: Using model properties and raw SQL with django-chartit
headline: since version 0.2.8
date: 2016-12-13 15:30
comments: true
Tags: Python, Django

[django-chartit](https://github.com/chartit/django-chartit) is a Django app
that can be used to easily create charts from the data in your database. The
charts are rendered using `Highcharts` and `jQuery` JavaScript libraries.
Data in your database can be plotted as simple line charts, column charts,
area charts, scatter plots, and many more chart types.

Few days ago we have released version 0.2.8 which includes support for
model properties and raw SQL queries in your charts. This blog post will describe
how to use them.

Using model properties
-----------------------

Sometimes it is convenient to calculate a value inside your models but
not store it in the database. For example consider the following model

    :::python
    class City(models.Model):
        city = models.CharField(max_length=50)
        state = models.CharField(max_length=2)

        def region(self):
            return 'USA:%s' % self.city

You are not able to select the `region` "field" but you may use it
as part of your chart `terms` as shown below

    :::python
    ds = DataPool(
            series=[{
                'options': {
                    'source': SalesHistory.objects.only(
                                'bookstore__city', 'sale_qty'
                              )[:10],
                },
                'terms': [
                    'bookstore__city__region',
                    'sale_qty'
                ]
            }]
    )

    cht = Chart(
            datasource=ds,
            series_options=[{
                'options': {
                    'type': 'column',
                    'stacking': False,
                    'stack': 0,
                },
                'terms': {
                    'bookstore__city__region': [
                        'sale_qty'
                    ]
                }},
            ],
            chart_options={
                'title': {
                    'text': 'Sales reports'
                },
                'xAxis': {
                    'title': {
                        'text': 'City'
                    }
                }
            }
    )

The full example, including source code and live charts is available at
[django-chartit/demoproject](https://github.com/chartit/django-chartit/tree/master/demoproject)!

Using raw SQL queries
---------------------

Django allows you to execute SQL queries directly. These will return objects in the form of
RawQuerySet and can be used in the same way as any other QuerySet.

    :::python
    ds = DataPool(
            series=[{
                'options': {
                    'source': MonthlyWeatherByCity.objects.raw(
                                "SELECT id, month, houston_temp, boston_temp "
                                "FROM demoproject_monthlyweatherbycity")
                },
                'terms': [
                    'month',
                    'houston_temp',
                    'boston_temp'
                ]
            }]
    )

You will have to select the primary key field and pay attention to field names as to avoid
duplicates when performing `JOIN` operations. Otherwise there is no difference. Full examples,
including source code and live charts are available at
[django-chartit/demoproject](https://github.com/chartit/django-chartit/tree/master/demoproject)!


Support
--------

At Mr. Senko we will do our best to accommodate every need and merge patches
and feature requests as they come in. Should you need commercial support for
this or other open source libraries please
**[subscribe to Mr. Senko's support service]({filename}pages/subscribe.html)**!
