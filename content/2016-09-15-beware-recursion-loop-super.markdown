Title: Beware of recursion loop when using super()
headline: use super(ClassName, self) & pylint
date: 2016-09-14 17:20
comments: true
Author: Alexander Todorov
Tags: Python, QA

When working with class inheritance in Python you often find yourself using
`super()` to call the parent class methods. The format is

    :::python
    super([current class name], self).[base class method]([arguments])

When you have lots of similar code you may be tempted to short-cut the writing
of `current class name`. The two possibilities are

    :::python
    super(type(self), self).some_method()
    super(self.__class__, self).some_method()

I have seen this in production code. I'm guilty myself as well because I like
to use the `self.__class__` notation! This leads to problems, see
[django-chartit #41](https://github.com/chartit/django-chartit/issue/41), when
you inherit from the class which uses these shortcuts. For example

    :::python
    class Base(object):
        def method(self):
            print 'original', type(self), self.__class__

    class Derived(Base):
        def method(self):
            print 'derived', type(self), self.__class__
            super(type(self), self).method()
            # super(self.__class__, self).method()

    class Subclass(Derived):
        def method(self):
            print 'subclass of derived', type(self), self.__class__
            super(Subclass, self).method()

When you call `Derived().method()` the result is 

    derived <class '__main__.Derived'> <class '__main__.Derived'>
    original <class '__main__.Derived'> <class '__main__.Derived'>

Here both shortcuts are evaluated correctly. However when you call
`Subclass().method()` the result becomes

    subclass of derived <class '__main__.Subclass'> <class '__main__.Subclass'>
    derived <class '__main__.Subclass'> <class '__main__.Subclass'>
    derived <class '__main__.Subclass'> <class '__main__.Subclass'>
    derived <class '__main__.Subclass'> <class '__main__.Subclass'>
    ... skip ...
    RuntimeError: maximum recursion depth exceeded while calling a Python object

In the example the call `super(Subclass)` works fine and invokes
`Derived.method()` as expected. Then we call `super(Subclass)` inside `Derived.method()`
which leads back to where we were hence the recursion loop. The problem is only visible
when you have other classes that inherit from a class which uses incorrect
invocation of `super()`. This is why it may lay hidden in production software!


I definitely expected a severe code smell like that to be discovered by pylint
and Landscape.io. Indeed older versions (pylint-1.3.1-1.el7.noarch) will report
error for `super(type(self))` but not newer ones. As it turns out pylint didn't
have a test for this condition and have introduced a regression in the
master branch. I believe this is due to that fact that they didn't check for
using `type()` directly but rather that was a side effect which ceased to exist
once the code was updated.
[Pylint#1109](https://github.com/PyCQA/pylint/pull/1109) adds tests for
the two code smells described above and updates the checkers to explicitly
detect them! Happy testing!




I hope you like my work and please
**[subscribe to Mr. Senko's support service]({filename}pages/subscribe.html)**
should you need commercial support for this or other open source libraries!
