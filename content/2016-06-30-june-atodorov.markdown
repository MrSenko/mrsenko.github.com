Title: June 2016 Status Report
headline: playing around with mutation testing
date: 2016-06-30 23:30
comments: true
Author: Alexander Todorov
Tags: Python

Hello everyone, last month has been a bit of a holiday and I don't have much
to share. I've been playing around with mutation testing tools. The few
patches I did are both related to *Cosmic Ray*:

* Allow session-name.json to be passed on the command line,
  [PR #144](https://github.com/sixty-north/cosmic-ray/pull/144)
* Report the mutation results using unified diff format,
  [PR #145](https://github.com/sixty-north/cosmic-ray/pull/145)

Right now I'm experimenting with running mutation testing against a few
popular open source libraries, written in both Python and Ruby.
So far the tools seem to work fine, except minor issues. However the test
suites I've been playing with aren't very robust and most of the mutants stay
alive! I will write another blog post on the subject once I have more
information to share. I hope you like my work and please
**subscribe to [Mr. Senko]({filename}pages/subscribe.html)!**
if need a faster response cycle for the open source libraries you use.
