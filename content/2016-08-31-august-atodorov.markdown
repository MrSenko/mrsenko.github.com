Title: August 2016 Status Report
headline: working on django-chartit
date: 2016-08-31 11:30
comments: true
Author: Alexander Todorov
Tags: Python

Hello everyone, during August I've been focusing on
[django-chartit](https://github.com/chartit/django-chartit) which
is a supported package of our Python software stack.

Since I've taken over maintenance from Praveen Gollakota there
were several bug-fix releases, 3 of them in August. The result is
6 closed issues and increased test coverage. I've spent time to
refactor parts of the code and make it compatible with the latest
Django version. Also cleaned up code smells identified by Landscape.io.

Future plans for *django-chartit* include working on the remaining
open issues. I think I will have to refactor the code a lot more
to make it compatible with the latest Highcharts.js API before
being able to implement the requested features.

I have also spoken with Highcharts engineering on the topic of
testing their JavaScript charting code in the context of *django-chartit*.
My idea is to load the demo project using various versions of the
JavaScript library and make sure everything works on the client side.
This appears to be doable with Selenium.



I hope you like my work and please
**[subscribe to Mr. Senko]({filename}pages/subscribe.html)**
if you need faster response cycle for the open source libraries you use.
