Title: Loading initial data for Many-To-Many fields
headline: using Django migrations and JSON
date: 2016-08-30 17:00
comments: true
Author: Alexander Todorov
Tags: Python, Django

Previously I've written about how to
[use JSON fixtures in Django migrations]({filename}2016-08-08-json-fixtures-migrations.markdown).
This becomes a bit more complicated when you have `ManyToMany` fields in
your models. A corner case is when you have a `ManyToMany` relation to `self`.
The example below comes from [django-chartit](https://github.com/chartit/django-chartit).

    :::python
    class Book(models.Model):
        title = models.CharField(max_length=50)
        rating = models.FloatField()
        rating_count = models.IntegerField()
        authors = models.ManyToManyField(Author)
        publisher = models.ForeignKey(Publisher, null=True, blank=True, on_delete=models.SET_NULL)
        published_at = models.DateTimeField(null=True, blank=True)
        related = models.ManyToManyField('self', blank=True)
        genre = models.ForeignKey(Genre, null=True, blank=True, on_delete=models.SET_NULL)

The fields `authors` and `related` are
represented as separate tables and are computed when you access objects from this
model. Django automatically handles these fields and creates classes for them.
Before you can use them, you need a reference to their model classes.

    :::python
    Book = apps.get_model("demoproject", "Book")
    BookRelated = None
    BookAuthors = None
    for relation in Book._meta.many_to_many:
        if relation.name == 'related':
            try:
                BookRelated = relation.remote_field.through
            except AttributeError:
                # available in Django 1.8
                BookRelated = relation.rel.through

        if relation.name == 'authors':
            try:
                BookAuthors = relation.remote_field.through
            except AttributeError:
                # available in Django 1.8
                BookAuthors = relation.rel.through


The JSON data looks like this

    :::json
    { "fields" : {
        "authors" : [  ],
        "genre_id" : 4,
        "publisher_id" : 3,
        "rating" : 3.8999999999999999,
        "rating_count" : 1869,
        "related" : [ 10 ],
        "title" : "Freakonomics"
      },
    "model" : "Book",
    "pk" : 9
    },
    { "fields" : {
        "authors" : [ 24 ],
        "genre_id" : 5,
        "publisher_id" : 9,
        "rating" : 4.4000000000000004,
        "rating_count" : 222,
        "related" : [ 23, 21 ],
        "title" : "Hyperspace"
         },
    "model" : "Book",
    "pk" : 24
    },


Once we have our related model classes we proceed to store the data
in the database like so

    :::python
    # create Book objects
    for record in json_data:
        # skip everything which isn't a book
        if record['model'] != 'Book':
            continue

        # build a list of book authors using the intermediate BookAuthors model
        for author_id in record['fields']['authors']:
            author_obj = BookAuthors()
            author_obj.book_id = record['pk']
            author_obj.author_id = author_id
            author_obj.save()
        # you can't save the `authors` field directly in DB
        del record['fields']['authors']

        # build a list of related books using the intermediate BookRelated model
        for related_id in record['fields']['related']:
            related_obj = BookRelated()
            related_obj.from_book_id = record['pk']
            related_obj.to_book_id = related_id
            related_obj.save()
        # you can't save the `related` field directly in DB
        del record['fields']['related']

        # finally save the Book object
        model_class = apps.get_model("demoproject", record['model'])
        obj = model_class(**record['fields'])
        obj.pk = record['pk']
        obj.save()


This works well for *django-chartit*. You should take care to
remove the `ManyToMany` fields from the JSON data because they
don't actually exist in the `Book` class and Django will raise
an exception if you try to assign to them.


I hope you like my work and please
**[subscribe to Mr. Senko's support service]({filename}pages/subscribe.html)**
should you need commercial support for this or other open source libraries!
