Title: Why Your Open Source Bugs Will Not Be Fixed
headline: and what to do about it
date: 2016-02-14 17:30
comments: true
url: blog/2016/02/14/why-your-open-source-bugs-will-not-be-fixed/
save_as: blog/2016/02/14/why-your-open-source-bugs-will-not-be-fixed/index.html

Here at Mr. Senko we've been researching why many bugs reported against
open source projects don't get fixed. This is not surprising given that many
contributors to open source use the "scratch your own itch" principle.
We've been talking to various people why some bugs are left open. We've
reached both open source maintainers and users and here are the results.

Time is Code
------------

The core of the problem revolves around time constraints. Open source developers
are limited by the time they have to work on the project, even more so if they
are volunteers. Their focus is on critical and high priority issues and driving
the project through its roadmap and they don't have enough time for you.
The side effect of this is that many smaller
issues are dealt with only if there is free time left.
Some factors to consider here:

* Not being able to reproduce the bug because it requires a particular
environment or is not explained very well;
* The bug is not immediately affecting the developer and they have
little incentive to fix it;
* There is a limited number of users who are affected by the bug and it
is not getting the priority or visibility it needs to be fixed by the
developer;
* Reviewing pull requests and discussing contributions is integral part of
open source. Usually only the core developers of the project are doing this
which limits even more their time to work on other issues;
* Popular projects, especially with exponential user-base growth are flooded
with feature requests and minor priority bug reports. Although these will
help the project become better in the long-run they reduce the free time
available to developers because they constantly have to review and keep track
of all these reports while still working on the current version;
* Lack of adequate testing or sufficient test coverage makes it harder to
accept new features and fix existing bugs;

You see where this is going - the more problems there are, the less time there
is to fix them and the problems pile up even more, shrinking the available time
as we go along.

Larger and more popular projects tend to exhibit more severe problems arising
from the above factors. Of the top 1000 Python, Ruby and Node.js packages
the average time an issue spends between open and closed is around 30 days,
some projects going to the extremes of 100s of days. All of this because the
developer to user ratio in these projects is too low.
On the other hand smaller communities are usually more responsive and
easier to work with. From our experience single developer projects tend to
respond within 2 days on average.


**How to Help**

* If a smaller project works for you and the developer is responsive enough
don't switch to a more popular one unless needed;
* If you have the technical capability provide help in code review and
pull requests discussion. Often spotting formatting mistakes or instructing
the contributor to squash their commits, provide short description in the docs
or a few tests will go a long way in helping the core group of developers;
* Provide clear steps to reproduce a bug, even better provide automated test
case for it. If you require a specialized setup try to provide a system where
the bug is present so the developer can debug live;
* Provide QA expertise by writing and executing test plans against new versions
of the project, even better contribute automated tests for that;
* Spend some time to investigate and increase test coverage. You may be using
the non-covered code and the next upgrade will break it without tests;


Leadership, Management and Politics
-----------------------------------

Less frequently cited problems are in the fields of leadership, project
management and community politics.
On the extreme end here we see projects which are not under active development
anymore but are still widely adopted by the general public. This is the case
with some of Node.js most downloaded packages. In the same category are also
projects which do have some development community(possibly with write access)
but it doesn't quite understand what the source code is doing and is not
able to promptly fix bugs or is unwilling to do so.

**How to Help**

* Become the secondary (or even primary) maintainer of the project if you have
the technical knowledge. If you want to step down announce your intentions
loud and clear and allow some time for the transition to take place.


Management and politics are often a problem in large and popular projects
where every developer has their own vision of how the project should evolve
and all of these visions need to be brought together and steered into a single
direction. In projects which are corporately sponsored there are trusted
developers who perform these tasks. In bigger projects there could even be
a management board who decides on where the project is going next and how
developer resources will be best utilized. For projects backed by a foundation
this is certainly the case.

**How to Help**

Provide a management capacity who will serve on the project's board. That
person will help raise visibility to your particular issues but their general
task will be to help the project move forward. If they fail to do so the
relationship will simply not work. Some projects have a fixed term for board
members to prevent a single entity overtaking control of the project.


Lorem Ipsum
-----------

Being humans developers are not prone to simple facts that make their work
non-effective or slow.

We've been told that some developers don't understand the bug-fix or more likely
the software development lifecycle. It sounds like we're talking about
inexperienced developers who managed to create a popular open source project
alone. Or maybe we're talking about developers who come from the start-up
scene while users are coming from the enterprise world and are used to working
in a different manner ? Either-way both parties have to learn from each other
and not allow tempers to rise too much.

Others have claimed that some developers don't know how to ask for outside help or
are reluctant to give up control of their projects to external contributors.
We don't have data about how often this happens but apparently often enough
to be visible.


**How to Help**

As a user (or developer) clearly communicate your intentions and expectations.
If you feel the other party doesn't quite understand you explain where are you
coming from. It is possible that you working environment and mental processes
are quite alien to them and they don't see the point in your words. If there is
a local technology user group or a near-by event then go meet the other guy
and buy them a beer.


Why Should You Care
-------------------

If you are still reading then chances are you've experienced some of these
problems yourself. We certainly have seen quite a few from the list above.
The bottom line is that whenever you have problems with a particular open
source project don't expect somebody to help you. Open source comes at a
price and it is being able to help yourself or fix your own problems. Kind
of like buying a new car without a warranty and a mechanic.

**Practical example - Sphinx**

Sphinx [PR #1902](https://github.com/sphinx-doc/sphinx/pull/1902) introduces
new features to the inheritance diagram plugin but also adds new tests for
the existing code base as well as new tests for the proposed modifications.
6 months later and the PR is still open, not even undergone code review.
Later in commit 4c4450 the core devel team changes a parameter type in one
of the functions used by the inheritance diagram plugin. Not having any tests
for the caller code they make a backward incompatible change which is still
broken in the master branch. For the fix see 
[commit d67fee](https://github.com/atodorov/sphinx/commit/d67fee57f000385cb48dba6cb1c725ddb0e0e2c0).

**Practical example - dnf-plugins-core**

The *dnf download* command in Fedora had a test suite which used badly
designed test stubs. They have been redesigned in
[PR #118](https://github.com/rpm-software-management/dnf-plugins-core/pull/118)
but developers requested the refactoring be merged together with
[PR #113](https://github.com/rpm-software-management/dnf-plugins-core/pull/113)
which also adds new functionality. 2 months afterwards comes
[commit fe1306](https://github.com/rpm-software-management/dnf-plugins-core/commit/fe130669ffc4c1d6eba8f10cda35ab4d803d5a3d)
which changes behavior in the same plugin. The badly designed test stubs
ignored the change silently and it landed in the master branch. The newly
redesigned tests broke immediately but they were still under review and not
merged until 1 month later.


Many developers and companies consuming open source software are OK
(or OK-ish) with this state of art. They've accepted that they have to
fix their own problems or work around them when the time comes.
This is how the open source is expected to work, isn't it ?

If you happen to be from those folks who don't have enough technical
knowledge to work on a particular project or don't have the time to
do so please consider [subscribing to Mr. Senko]({filename}pages/subscribe.html)!
We're happy to provide open source support to those who need it.
