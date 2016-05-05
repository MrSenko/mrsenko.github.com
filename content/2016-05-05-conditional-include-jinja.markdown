Title: Conditional Include in Jinja2 and Pelican
Headline: or how to use plugins only when they are loaded
date: 2016-05-05 14:10
comments: true
Author: Alexander Todorov
Tags: Python

How do you create Jinja templates which behave differently based
on what Pelican plugins are loaded ? I've hit this problem while
working on improving
[Flex PR #20](https://github.com/alexandrevicenzi/Flex/pull/20).
The straight forward solution looks like this

    :::jinja
    {% for name in PLUGINS if name == 'assets' %}
        {% assets "stylesheet/style.css", filters="cssmin", output="style.min.css" %}
            <link rel="stylesheet" type="text/css" href="{{ SITEURL }}/{{ ASSET_URL }}">
        {% endassets %}
    {% else %}
        <link rel="stylesheet" type="text/css" href="{{ SITEURL }}/{{ THEME_STATIC_DIR }}/stylesheet/style.min.css">
    {% endfor %}

It appears to work great except when the `assets` plugin isn't loaded.
Then we get a [TemplateSyntaxError](https://github.com/pallets/jinja/pull/582):

    TemplateSyntaxError: Encountered unknown tag 'assets'.
    Jinja was looking for the following tags: 'endfor' or 'else'.
    The innermost block that needs to be closed is 'for'.`

The `{% assets %}` tag is not defined because the `assets` plugin is missing.
We may expect that Jinja will parse this tag only if the body of the for loop is
executed but instead Jinja tries to parse all tags before rendering the template.
The solution, as proposed by @ThiefMaster on GitHub, is to use a conditional
`{% include %}` tag inside the for loop body like so

    :::jinja
    {% for name in PLUGINS if name == 'assets' %}
        {% include 'assets.html' %}
    {% else %}
        <link rel="stylesheet" type="text/css" href="{{ SITEURL }}/{{ THEME_STATIC_DIR }}/stylesheet/style.min.css">
    {% endfor %}

Where `assets.html` looks like this

    :::jinja
    {% assets "stylesheet/style.css", filters="cssmin", output="style.min.css" %}
        <link rel="stylesheet" type="text/css" href="{{ SITEURL }}/{{ ASSET_URL }}">
    {% endassets %}

I don't like splitting out the HTML code in this way. Imagine that we later decide to
add a second CSS file to the template. The risk of forgetting to add it in both places
increases as the number of CSS files (or places where we use the same HTML pattern)
increases. However this appears to be the only way to conditionally use the `assets`
plugin only when it is loaded. The proposed changes are in
[Flex PR #40](https://github.com/alexandrevicenzi/Flex/pull/40).

I hope you like my work and please
**subscribe to [Mr. Senko]({filename}pages/subscribe.html)**
if you need a faster release cycle for the open source libraries you use.
