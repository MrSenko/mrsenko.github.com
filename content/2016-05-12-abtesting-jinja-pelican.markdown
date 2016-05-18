Title: A/B Testing with Jinja2 and Pelican
date: 2016-05-12 10:10
comments: true
Tags: Python

A/B testing is a randomized experiment with two variants,
which are the control and variation in the controlled experiment.
In this article we're going to present a solution which works with
*Pelican* and other *Jinja2* based static site generators.

The markup
----------

In statically generated websites you either have content or templates.
We've been interested in encoding A/B experiments in templates and didn't
find a solution so we made our own.
[jinja-ab](https://github.com/MrSenko/jinja-ab) is an A/B testing extension
for *Jinja2*. It allows you to encode experiments in your templates and renders
the experiment selected by the `AB_EXPERIMENT` environment variable. **control**
is the default experiment name if `AB_EXPERIMENT` is not specified!
The syntax looks like this

    :::jinja
    {% experiment control %}This is the control{% endexperiment %}
    {% experiment v1 %}This is version 1{% endexperiment %}


Rendering and output control
----------------------------

*jinja-ab* deals with rendering the template string based on the value of
`AB_EXPERIMENT`. It is up to you to decide what to do with the result.
At [Mr. Senko](http://MrSenko.com) we use *Pelican* and created the complimentary
[pelican-ab](https://github.com/MrSenko/pelican-ab) plugin. To enable the plugin
simply add it in your `pelicanconf.py`

    :::python
    PLUGIN_PATHS = ['path/to/pelican-ab']
    PLUGINS = ['pelican_ab']

After encoding your experiments into the theme templates you can generate the
resulting HTML files by running the command

    :::bash
    AB_EXPERIMENT="v1" make html


When rendering experiments the resulting HTML files are saved under
`OUTPUT_PATH` plus the experiment name. For example 'output/v1', 'output/v2',
etc. The control experiments are rendered directly under `OUTPUT_PATH`.
For example the control directory structure of this blog looks like this:

    output/
    |-- blog
    |   |-- 2016
    |   |   | ...
    |   |-- archives
    |   |-- atodorov
    |   |   `-- ...
    |   |-- mr-senko
    |   |   `-- ...
    |   `-- tags
    |       | ...
    |-- feeds
    |-- images
    |-- js
    |-- support
    `-- theme

After rendering an experiment called 'v1' the directory structure looks like
this:

    output/v1/
    |-- blog
    |   |-- 2016
    |   |   | ...
    |   |-- archives
    |   |-- atodorov
    |   |   `-- ...
    |   |-- mr-senko
    |   |   `-- ...
    |   `-- tags
    |       | ...
    `-- support

Only content output is saved under the new directory because content it
rendered using the templates which we want to A/B test. This is how *pelican-ab*
works for the moment.

This plugin also automatically updates the `Content.url` and `URLWrapper.url`
class properties from *Pelican* so that things like `{{ article.url }}`
and `{{ author.url }}` will point to URLs from the same experiment.

In other words each experiment
produces its own HTML and URL structure, using the experiment name as
prefix. Once a user lands on
a page from experiment "v1" all links to other content will also point to
"v1", for example 'blog/about-me.html' becomes 'v1/blog/about-me.html', etc.
This will help you gather more information from the experiment because
all your internal URLs are under the same experiment,
using the same HTML template variation.

**NOTE:** wherever you use the `{{ SITEURL }}` template tag without pointing
to the content url property the values will not be changed. This means
all your CSS, JavaScript and images will continue to work without being
duplicated under the experiment directory.


Testing and publishing experiments
----------------------------------

For local development use the command `AB_EXPERIMENT="xy" make regenerate`
or `AB_EXPERIMENT="xy" make html` together with `make serve` to review the
experiments. When you are ready to publish them online execute the following
sequence of commands:

    :::bash
    rm -rf output/
    make github
    AB_EXPERIMENT="01" make github
    AB_EXPERIMENT="02" make github


By default `publishconf.py` contains `DELETE_OUTPUT_DIRECTORY = True`
which causes *pelican-ab* to raise an exception. The problem is that you need
to execute `make publish` or `make github` for each experiment you'd like to
publish online. When `DELETE_OUTPUT_DIRECTORY` is True the previous contents
will be deleted and **ONLY** that variation will be published!
This will break your website because everything will be gone!


A/B testing
-----------

Now that we finally got our experiments encoded and rendered it is time to
re-route some of the web traffic to them and analyze the results. *pelican-ab*
is not designed to deal with this, you will have to use external tools to
control how your web traffic is redirected to your experiments and what sort
of results are collected. Our favorite ones are *LuckyOrange* and *Optimizely*.


Support
-------

*jinja-ab* and *pelican-ab* are provided as open source for everyone to use.
At Mr. Senko we will do our best to accommodate every need and merge patches
and feature requests as they come in.
Should you need commercial support for these or other open source libraries
please **subscribe to [Mr. Senko]({filename}pages/subscribe.html)**!
