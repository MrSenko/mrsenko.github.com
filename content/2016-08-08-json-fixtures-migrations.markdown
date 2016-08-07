Title: Converting JSON Fixtures to Django Migrations
headline: the easy way
date: 2016-08-08 10:00
comments: true
Author: Alexander Todorov
Tags: Python, Django

Older Django apps like
[django-chartit](https://github.com/chartit/django-chartit) and
[Nitrate](https://github.com/Nitrate/Nitrate) used JSON fixtures to populate
their databases with initial data. In this article I will show you an easy way
to convert JSON fixtures into native Django migrations.
The JSON fixture looks like this

    :::json
    {"fields": {"first_name": "Seth",
                "last_name": "Godin"
                },
     "model": "demoproject.Author",
     "pk": 1
     },
    {"fields": {"first_name": "Guy",
                "last_name": "Kawasaki"
                },
     "model": "demoproject.Author",
     "pk": 2
     },
    {"fields": {"first_name": "Geoffrey",
                "last_name": "Colvin"
                },
     "model": "demoproject.Author",
     "pk": 3
     }

Notice the `pk` and `model` fields which tell us where this data came from
and what was the object PK when exported from the database. The `fields`
dict is the actual data for this object.

In Python we can use `json.loads` and read the fixture data from disk or
even better assign it directly to a variable inside our Python source file.
Then iterate over all values and create the objects programmatically like this

    :::python
    from __future__ import unicode_literals
    from django.db import migrations
    
    
    def initialize_data(apps, schema_editor):
        data = [
            {"fields": {"first_name": "Seth",
                        "last_name": "Godin"
                        },
             "model": "demoproject.Author",
             "pk": 1
             },
            {"fields": {"first_name": "Guy",
                        "last_name": "Kawasaki"
                        },
             "model": "demoproject.Author",
             "pk": 2
             },
            {"fields": {"first_name": "Geoffrey",
                        "last_name": "Colvin"
                        },
             "model": "demoproject.Author",
             "pk": 3
             },
        ]

        for record in data:
            app_name, model_name = record['model'].split('.')
            ModelClass = apps.get_model(app_name, model_name)
            obj = ModelClass(**record['fields'])
            # this is required only if you have other models
            # with foreign keys referring to this object
            # obj.pk = record['pk']
            obj.save()
    
    class Migration(migrations.Migration):
    
        dependencies = [
            ('demoproject', '0001_initial')
        ]
    
        operations = [
            migrations.RunPython(initialize_data),
        ]


This works well for most of the cases. You should take care to assign the
same PKs in case there are other objects that hold references to them. If
this isn't the case then you can drop these fields entirely to reduce your
source code size.

I hope you like my work and please
**[subscribe to Mr. Senko's support service]({filename}pages/subscribe.html)**
should you need commercial support for this or other open source libraries!
