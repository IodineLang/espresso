---
layout: page
title: Documentation
permalink: /documentation/
---
1. TOC
{:toc}

# Quick Start

{% gist Aurora0000/49e067a5eb50646dbe0a %}

# Describe Blocks
`describe` blocks are equivalent to tests suites in other test frameworks. They
can contain `it` blocks, which are the actual tests, or other `describe` blocks.

The `describe` function can be used to create a root-level `describe` block. It
takes two parameters: a block name, and a lambda that takes the parameter
`test`, like so:

{% gist Aurora0000/03e359510499f2d7d250 %}

Nested `describe` blocks can be created using `test.describe`, with `test` being
the parameter passed to the lambda.

# It Blocks
`it` blocks contain the actual tests. They must be in a `describe` block, as
shown in the Quick Start section. Unless an exception occurs, they are
considered to have passed. You can throw any exception you like to cause an
`it` block to fail, so long as you don't catch it. They are *always* created
with `test.it`, because they have to be inside a `describe` block.

# Expect
The `expect` function is one of the most powerful features of Espresso. It
allows you to write expressive assertions based on your user stories (if you're
following a Scrum or XP programming methodology), or just write
easy-to-understand assertions that are aesthetically pleasing. An `expect`
assertion has three parts: an *expect* call, some *chainables* and a
*condition*.

## Expect Call
This part is simple to understand. You simply use the expect function from the
espresso library and call it, with the object you wish to test, like this:

{% gist Aurora0000/e51bca684e47bf833c2f %}

## Chainables
Chainables are like the 'glue' of your `expect` statement. They simply serve to
make your statement more readable, and don't add any logic. You can use them
like so:

{% gist Aurora0000/c0795ea6b2e622ed0b52 %}

They're entirely optional, but using them is great for expressiveness and
readability.

The following chainables are available:

- .to
- .be
- .have
- .at

Most `expect` statements use the .to chainable, because it allows you to express
"Expect <value> to <be something>", in a human-readable way.

### .not()
The .not() chainable is a little special, because it's the only one that adds
logic to an `expect` statement. Therefore, it requires a function call. You can
use it anywhere in your `expect` chain, though, just like .to or .be.

## Conditions

### .equal(value)
The .equal(value) condition checks if the two values are of the same type
(typeDefs match) and are equal (==). This will work for almost any value except
classes. This is because == compares by reference unless overloaded (which is
done for all default types). If you're not sure what this means, just follow
this rule: if it's not a class, it'll probably work with .equal.

{% gist Aurora0000/73aebf5872493b8d82d8 %}

### .attribute(name)
The .attribute(name) condition checks if the object has the specified attribute.
`name` should be a string (typeDef "Str") with the attribute name. Internal
attributes are also counted!

{% gist Aurora0000/97f6cd0eef96c5290a1c %}

### ._true()
The ._true() condition checks if the object is true (and a boolean). It is
prefixed with an underscore because Iodine does not permit a function to use a
keyword name.

{% gist Aurora0000/15282d255f563ca98d12 %}

### ._false()
The ._false() condition checks if the object is false (and a boolean).

{% gist Aurora0000/c39f98b4cfc1d832fd54 %}

### ._null()
The ._null condition checks if the object is null. It will not pass if the
object is undefined (because this will cause an AttributeNotFoundException in
your code)

{% gist Aurora0000/27d883cbc66019e1dc90 %}

### .a(type), .an(type)
The .a(type) condition (and its duplicate, .an(type)) can be used to see if an
object is of a specific type. The type must be a string. It might be a good idea
to use targetObjectType.typeDef in the `type` parameter, like this:

{% gist Aurora0000/07248a3b8b681fc8cdaa %}

It doesn't actually matter if you use .a() or .an(), it is simply a way to make
a grammatically correct sentence.

### .key(keyName)
The .key(keyName) condition checks to see if the object is a HashMap and if it
contains the key specified. It will fail if the object is not a HashMap.

{% gist Aurora0000/ef8c233ca01a8e85b3da %}

### .keys(key1, key2, key3...)
The .keys() condition can be used instead of multiple .key() conditions to see
if a HashMap contains all of the specified values.

### .above(value)
The .above(value) condition is equivalent to saying:

`if (object > value)`

So, in effect, it is a greater than condition. If the object is not an integer,
it will fail.

{% gist Aurora0000/8cda65ebe3ce58f3754d %}

### .below(value)
The .below(value) is the opposite of .above(value). Therefore, it is equivalent
to a less than condition.

### .least(value)
The .least(value) is the equivalent of greater than or equal to. You should use
it with the .at chainable, like this:

{% gist Aurora0000/dacae0dbab1753fffbc8 %}

### .most(value)
The .most(value) is the equivalent of less than or equal to. See .least(value)
for a similar example.
