Title: March 2016 Report
headline: Nitrate & Pelican
date: 2016-03-30 14:30
comments: true
Author: Alexander Todorov
Tags: Python
url: blog/2016/03/30/march-2016-report/
save_as: blog/2016/03/30/march-2016-report/index.html

Here is a quick status report for [Mr. Senko](http://MrSenko.com). During
March 2016 I've worked on:

* A few more improvements to
[pelican-clean-blog](https://github.com/gilsondev/pelican-clean-blog/pulls?q=is%3Apr+author%3Aatodorov+is%3Aclosed)
theme;
* Two new features for 
[Pelican](https://github.com/getpelican/pelican/pulls/atodorov);
* Several bug fixes and improvements for
[Nitrate](https://github.com/Nitrate/Nitrate/pulls/atodorov).


Nitrate Test Case Management System
------------------------------------

[Nitrate](http://nitrate.readthedocs.org/en/latest/guide/introduction.html) is
a test case management system written with Django. We use it internally to track
testing activities. It is reasonably good at what it does but there are some
issues with how the software has been developed in the past.


* Nitrate is Django based but doesn't follow best Django practices.
There are places where it executes raw SQL against the DB instead of using
Django's ORM model. This makes it non-portable between DBMS.

* Nitrate has a long development history but poor documentation. It has introduced
DB migrations and updates in a non-Django friendly way. The currently preferred
method is to execute an SQL file against the DB. This is poorly documented and
of course I've missed it. I'm sure others will miss it as well.

* Going forward with native Django migrations all of these SQL files need to be
converted and I haven't looked into this yet. Another possibility is to just release
a new version which doesn't allow automatic DB updates.


* There are a bunch of static files (e.g. images) used directly in CSS and JavaScript files.
This immediately breaks if you decide to host your static files elsewhere
(e.g. Amazon S3 bucket). There is an easy fix but it requires the use of latest Django.


* Django version (and other dependencies) are quite old. This introduces security
risk and also makes it harder to develop new functionality sometimes. I have opened
a PR to bring Django forward to 1.8.11 version but that still needs more work.
Yes I broke the test-suite as part of the migration.

* So far my impression is that the Nitrate team are slow to respond on GitHub.
Given the current state of Nitrate and the amount of work which needs to be done
this is disappointing.


If you like my work and need a faster response cycle please
**consider subscribing to [Mr. Senko]({filename}pages/subscribe.html)!**
