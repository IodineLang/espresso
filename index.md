---
layout: default
title: Home
permalink: /
---
# What is Espresso?
Espresso is a powerful, flexible and expressive testing library for the
[Iodine](https://github.com/IodineLang/Iodine) programming language. It is
inspired by [Mocha](https://mochajs.org) and [Chai](http://chaijs.com) in
design, allowing you to build tests that are easy to maintain, use and
understand.

## Install with Ion
We recommend that you use Ion to install Espresso, because it's fast, easy and
avoids the common gotchas of installing Iodine packages.

{% highlight bash %}
$ ion install espresso-dev
{% endhighlight %}

[Other Installation Methods](install/)

## Using Espresso
Espresso supports test suites, which are enclosed in `describe` blocks, and
individual tests, enclosed in an `it` block. An `it` block passes if no
exceptions occur.

{% gist Aurora0000/6566f99ca8eab9734231 %}

The root block is always a `describe`. Any children must be prefixed with
`test.`, for example:

{% gist Aurora0000/28af435203656180a160 %}

As you've seen, you can nest `describe` blocks. The root `describe` block will
receive all test results from its children, and show them in its summary.

Of course, so far, this code isn't much use. You can use the expressive
`expect` function to run assertions in a style that fits well with
behaviour-driven development and user stories.

{% gist Aurora0000/49e138522bd1cab7434e %}

Take a look at the [documentation](documentation/) for information on the
`expect` function chains.
