Title: Reviving pelican-octopress and pelipress
Headline: new repository with more features now available
date: 2016-05-25 14:10
comments: true
Tags: Python

*pelican-octopress-theme* and *Pelipress* are popular themes for *Pelican*
but are not actively
developed at the moment. Mr. Senko decided to fork and
continue their active development. The new repository is at
[MrSenko/pelican-octopress-theme](https://github.com/MrSenko/pelican-octopress-theme).


Why did we fork
----------------

Initially we've tried sending pull requests to the upstream repository but
later noticed multiple issues and pull requests which were left open for more than
a year, nearly 2 years in the worst cases. *Pelipress* on the other hand
has not been rebased back to *pelican-octopress-theme* for almost 3 years!

We've emailed the original authors of both projects but didn't get a reply to our
inquiries in a few weeks so decided to fork and continue forward.





Changelog
---------

The following features have been merged from *pelican-octopress-theme* by
resolving all conflicts which were present:

* Merge PR #88 - add header images and background colors. Fixes issue #52
* Merge PR #87 - update documentation. Fixes issue #56
* Merge PR #84 - add INDEX_FULL_CONTENT setting
* Merge PR #83 - load scripts before plugins that might use them
* Merge PR #82 - add disqus_identifier article metadata. Fixes issue #81
* Merge PR #76 - add support for Mailchimp newsletter registrations
* Merge PR #73 - add ARCHIVE_TITLE setting
* Merge PR #72 - add support for Google AdSense in sidebar
* Merge PR #67 - improved sidebar control with AUTHOR_ABOUT, DISPLAY_CATEGORIES,
  DISPLAY_TAGS and DISPLAY_FEEDS settings. SIDEBAR_IMAGE is only shown when
  AUTHOR_ABOUT is set!
* Merge PR #55 - add SHOW_ARTICLE_NEIGHBORS, SHOW_DISQUS_COMMENT_COUNT,
  ARTICLE_ASIDES, PAGE_ASIDES and INDEX_ASIDES settings

The following features have been inspired by *Pelipress* and cleanly re-implemented
on top of the current fork:

* Add DISPLAY_SOCIAL_ICONS setting and the social_icons sidebar
* Add FOOTER_INCLUDE setting
* Add SHOW_HEADER setting



Support
-------

At Mr. Senko we will do our best to accommodate every need and merge patches
and feature requests as they come in.
Should you need commercial support for this or other open source libraries
please **subscribe to
[Mr. Senko's support service]({filename}pages/subscribe.html)**!
