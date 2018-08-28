Title: Workshop: How to write pylint plugins
url: pylint-workshop/
save_as: pylint-workshop/index.html

How to write pylint plugins
===========================

Pylint is the most popular static source code analyzer for Python.
It has a plugable architecture and allows developers to create their
own checks. This is very useful for projects where you would like to
enforce specific rules and coding style. For example that all of your
API classes follow the same naming convention or that all of your source
files contain a copyright notice!

Mr. Senko provides instructor led workshops which teach you all the
necessary skills for creating plugins.


Target audience
---------------

Medium level or experienced developers who work with Python (and/or Django)
and/or QA engineers who work
with the project source code directly! In order to get the maximum of this
workshop you need to have moderate skills in programming with Python and be
comfortable working with classes and objects!


Workshop: AST based plugins
---------------------------

Duration: 3hrs

Group: max 10 people

Pricing: 150 EUR/person

Description: Abstract syntax tree based plugins are the most popular type
of plugins in pylint. They are used over 90% of the time. This workshop
will teach you:

* How pylint works
* Implementing a plugin skeleton - hands-on exercise
* Invoking the plugin - hands-on exercise
* Parsing Abstract Syntax Trees in Python – hands-on exercise
* Putting together a minimalistic plugin - hands-on exercise
* Formulating (your) ideas into actionable goals - what sort of plugin
would you like to create (or work from pre-existing scenarios)
* Writing code and code review - more hands-on exercise

<a href="https://docs.google.com/forms/d/e/1FAIpQLSeiwJVSBUUZC4i_bktLcR4xyzsaBh_tavoW0POFh55hndi1Ug/viewform" class="button special small">Sign-up</a>


Full day pylint workshop
------------------------

Duration: 7hrs

Group: max 10 people

Pricing: 500 EUR/person

Description: This workshop covers pylint in more details with more
practical examples and explanation. Topic include:

* Everything from the AST workshop
* Other pylint checker interfaces
* Token based pylint plugins
* Token and AST mixed plugins
* Type inference in AST - figuring out what kind of objects we are
  dealing with
* Augmentations - suppressing selected error messages during runtime
* Transformations - teaching pylint to recognize your framework
* Proper testing of pylint plugins

<a href="https://docs.google.com/forms/d/e/1FAIpQLSdOTxt2Jy04nCP1lWVGI2Jv1JnUABFe4Jqzu5ZNaQEn434p4g/viewform" class="button special small">Sign-up</a>


Technical requirements
----------------------

* Python 3.6 installed and running
* Text editor or IDE of your choice – you must know how to use them !
* virtualenv (virtualenv-wrapper) tools installed and running so you can
  configure a working environment for your pylint plugins
* pylint >= 2.0 installed inside the virtualenv

Try to identify code patterns which are not detected by standard pylint checks
so that you can write a plugin for them. Practice patters will be provided by
instructor.



Instructor
----------

[Alexander Todorov](https://github.com/atodorov) –
a Senior QA engineer with more than 10 years of experience in
test automation and development with Python. Alex is also the current maintainer of
[pylint-django](https://github.com/PyCQA/pylint-django/graphs/contributors),
contributor to [pylint](https://github.com/PyCQA/pylint/pulls/atodorov) and project lead
of [Kiwi TCMS](http://kiwitcms.org).


Dates
-----

* *More dates will be announced depending on availability*
* Feb 2019, Brussels, TBC
* 2-3 Nov 2018, Staint Petersburg
* October 20018, Germany, Karlsruhe region, TBC
* 15 Sept 2018, Sofia
* 3rd June 2018, Prague
* 26-27 May 2018, Heidelberg
* 19-20 May 2018, Tirana


For more dates and in-house corporate training please
[get in touch with us](/#get-in-touch)!


Support pylint development
--------------------------

If you use pylint commercially we strongly encourage you to invest in its continued
development by [signing up for a paid plan]({filename}subscribe.html)
(use our existing subscription plans).
We believe that collaboratively funded software can offer outstanding returns on investment,
by encouraging our users to collectively share the cost of development.

Signing up for a paid plan will:

* Directly contribute to faster releases, more features, and higher quality software
* Allow more time to be invested in documentation, issue triage, and community support
* Safeguard the future development of pylint
