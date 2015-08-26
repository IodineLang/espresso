---
layout: page
title: Installing
permalink: /install/
---
# Installing Espresso

## Using Ion

[Ion](https://github.com/IodineLang/Ion) is recommended for installing Espresso
because it will automatically fetch any dependencies (though there are currently
none), and will get the latest version without any intervention.

{% highlight bash %}
$ ion install espresso-dev
{% endhighlight %}

## From Source
You can just include the espresso.id file with your code, and use relative
imports to include it.

{% highlight go linenos %}
use describe, expect from .espresso;
{% endhighlight %}
