Title: Triggering Automatic Dependency Testing
Headline: with Strazar
date: 2016-05-18 16:10
comments: true
Tags: Python

[Strazar](https://github.com/MrSenko/strazar) (from Bulgarian for sentinel)
helps you monitor upstream sources
and once a new package version is found your `.travis.yml` environment is updated
and the changes committed to GitHub which automatically triggers a new build!
This approach relies on having a good test suite, but you already have that
covered, right ?

*Strazar* was inspired by Forbes Lindesay's *GitHub Automation* talk
at DEVit Conf 2015 and we're very excited to announce this release days before
this year's DEVit Conf!


What is currently supported
----------------------------


In its initial release *Strazar* only supports [PyPI](http://pypi.python.org),
Travis-CI and GitHub. We already have written the code to detect new
[RubyGems](http://rubygems.org) and [NPM](https://www.npmjs.com) packages
and that will land in the next versions.
However we also found the wonderful [libraries.io](http://libraries.io)
service which is already aware of many more package repositories so we'll
try to integrate *Strazar* with it in the future.

We've started with Travis-CI because this is what we use but support for
other CI environments is very easy to add. *Strazar* calculates all
possible combinations between package names and their versions and writes
them to a text file. To add another CI environment we only need to parse
and write the file in the correct format.
 
Installation and configuration
-------------------------------

To install *Strazar* execute

    :::bash
    pip install strazar

Then configure the `GITHUB_TOKEN` environment variable. This token needs
the ``public_repo`` or ``repo`` permission in order to push commits to
your repositories.

Prepare .travis.yml
-------------------

*Strazar* uses the variable format `_PACKAGE_NAME` where the 
variable name starts with an under-score followed by the capitalized
package name. All hyphens are converted to under-scores as well.
We advise that your `.travis.yml` files follow the same convention.
This is how *Strazar*'s own `.travis.yml` looks like

    language: python
    python:
      - 2.7
      - 3.5
    install:
      - pip install coverage flake8 mock PyYAML==$_PYYAML PyGithub==$_PYGITHUB
    script:
      - ./test.sh
    env:
      - _PYGITHUB=1.26.0 _PYYAML=3.11



How to monitor PyPI
-------------------

PyPI doesn't provide web-hooks so we examine the RSS feed for packages of
interest based on configuration settings. To start monitoring PyPI execute
the following code from a cron job (here at Mr. Senko we do it every hour)

    :::python
    import os
    import strazar

    os.environ['GITHUB_TOKEN'] = 'xxxxxxxxx'
    config = {
        "PyYAML" : [
            {
                'cb' : strazar.update_github,
                'args': {
                    'GITHUB_REPO' : 'MrSenko/strazar',
                    'GITHUB_BRANCH' : 'master',
                    'GITHUB_FILE' : '.travis.yml'
                }
            },
        ],
    }
    
    strazar.monitor_pypi_rss(config)

The `config` dict uses package names as 1st level keys. If you are interested
in a particular package add it here. All other packages detected from the RSS
feed will be ignored. If your project depends on multiple packages you have to
list all of them as 1st level keys in `config` and duplicate the key values.

The key value is a list of call-back methods and arguments to execute once a
new package has been published online. If two or more repositories depend on
the same package then add them as values to this list.

The `strazar.update_github` call-back knows how to commit to your source repo
which will automatically trigger a new CI build.


Support
-------

*Strazar* is provided as open source for everyone to use.
At Mr. Senko we will do our best to accommodate every need and merge patches
and feature requests as they come in.
Should you need commercial support for this or other open source libraries
please **subscribe to
[Mr. Senko's support service]({filename}pages/subscribe.html)**!

