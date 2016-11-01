Title: Status Report for October 2016
headline: working on Cosmic Ray
date: 2016-10-31 11:30
comments: true
Author: Alexander Todorov
Tags: Python

Hello everyone, during October I've been focusing on
[Cosmic Ray](https://github.com/sixty-north/cosmic-ray) which
is a supported package of our
[Python software stack]({filename}pages/support/python.html).

The changes include

* Report only SURVIVED mutants if `--full-report` is not specified;
* Refactoring of `MutationCore.visit_mutation_site()`;
* Update of comparison operators mutations based on the new behavior;
* Refactoring of `UnaryOp` mutation operators based on the new behavior
  and introduction of more mutations;
* Update `BinaryOp` mutation operators and add more mutations;
* Update of `tools/inspector.py` to follow the latest code.

All of my work this month was around `visit_mutation_site()` being able
to generate multiple mutations at a single site. For example the code

    a < b

can be mutated into:

    a <= b
    a is not b
    a > b
    ... etc

Previously this was done using different mutation operators but now it
is done using a single class and an index to the desired operator replacement.
As a follow up other mutation operators had to be updated as well. As a result
the code base is cleaner and easier to understand.


I hope you like my work and please
**[subscribe to Mr. Senko]({filename}pages/subscribe.html)**
if you need faster response cycle for the open source libraries you use.
