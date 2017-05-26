Title: Using private PyPI repositories
headline: in requirements.txt and setup.py
date: 2017-01-22 12:30
comments: true
Author: Mr. Senko
Tags: Python


Once you have subscribed to Mr. Senko you will receive a repository URL from
which to install package versions supported by Mr. Senko. The URL is of the form
**https://d1v12p11qcbqzw.cloudfront.net/YOUR-CUSTOMER-ID**

You must keep this URL secret! You can install supported packaged by either command line:

    :::
    pip install kiwitestpad --extra-index-url https://d1v12p11qcbqzw.cloudfront.net/YOUR-CUSTOMER-ID

or inside of your project by adding the following statement to `requirements.txt`:

    :::
    --extra-index-url https://d1v12p11qcbqzw.cloudfront.net/YOUR-CUSTOMER-ID

You can also configure your `~/.pip/pip.conf` file to look like this

    :::
    [global]
    ; Extra index from Mr. Senko
    extra-index-url = https://d1v12p11qcbqzw.cloudfront.net/YOUR-CUSTOMER-ID


Another possibility is to configure the private repository URL directly into `setup.py`:

    :::python
    setup(
        name='YourAppName',
        install_requires=[
            'strazar',
        ],
        dependency_links=[
            'https://d1v12p11qcbqzw.cloudfront.net/YOUR-CUSTOMER-ID',
        ],
    )


And you're ready to seamlessly pip install private packages from Mr. Senko.

What is Mr. Senko?
------------------

Mr. Senko provides long term support for various open source libraries. We do
bug fixes and feature development, improve testing and write documentation so
you don't have to!
**[Subscribe to Mr. Senko]({filename}pages/subscribe.html)**
if you need faster response cycle for the open source components which you use.
