---
title: "Ruby Building Blocks"
date: 2015-06-22
draft: false
tags: ["ruby","modules","classes"]
---

I feel like a toddler. My brain hurts and nothing makes sense. The internet insists on explaining things to me like I already know things. Dear Internet, I most certainly do not. I have included here the stuff that did make sense. May these humble building blocks aid you in your own pursuit of understanding.

## Modules vs. Classes
From my blog post on the map method, a module is a way of grouping together methods, classes, and constants - a collection of reuseable code. A class, on the other hand, is a Ruby 'thing' (object) with a state and a behavior.

Quick define: superclass and subclass describe the relationship between classes. The subclass acquires the behaviors (methods) of the superclass. It's a hierarchy. Super → top, sub → bottom.

--- | Modules |	Classes
--- | --- | --- 
Definition	| A collection of reuseable code.	| A Ruby object with a state and a behavior.
Instantiation	| No. |	Yes. `Class.new()`
Inclusion |	Include in classes or modules with the `include` command. A module can be included by multiple classes.	| No.
Inheritance	| Does not do inheritance. |	Can inherit methods from it's superclass, can serve as a base for a subclass to inherit.
Purpose	| A code container, good for organization. Provides methods that you can use across multiple classes. Use when you want to group things together that don't naturally form a class.	| To create instances of itself.
Contains	| methods, constants, variables	| methods, constants, variables
Syntax |	`module ModuleName .. end`	| `class ClassName .. end`

## Namespace & Mixins
Stay with me, these terms require some exposition. [This wonderfully fabulous article](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_modules.html) provides a great explanation. In fact, it's so great that I'm going to include it here:

___

A good example of when the term 'namespace' becomes relevant is when you want to collaborate with other developers and share code.

(Nothing below here is mine)

Say you write a set of trigonometry functions sin, cos, and so on. You stuff them all into a file, trig.rb, for future generations to enjoy. Meanwhile, Sally is working on a simulation of good and evil, and codes up a set of her own useful routines, including beGood and sin, and sticks them into action.rb. Joe, who wants to write a program to find out how many angels can dance on the head of a pin, needs to load both trig.rb and action.rb into his program. But both define a method called sin. Bad news.

The answer is the module mechanism. Modules define a namespace, a sandbox in which your methods and constants can play without having to worry about being stepped on by other methods and constants. The trig functions can go into one module:

``` ruby
module Trig
  PI = 3.141592654

  def Trig.sin(x)
    # ..
  end

  def Trig.cos(x)
    # ..
  end
end
```
  
and the good and bad action methods can go into another:

``` ruby
module Action
  VERY_BAD = 0
  BAD      = 1

  def Action.sin(badness)
    # ...
  end
end
```

Pretty awesome right?!

More awesomeness that isn't mine: "A module can't have instances, because a module isn't a class. However, you can include a module within a class definition. When this happens, all the module's instance methods are suddenly available as methods in the class as well. They get **mixed in**. In fact, mixed-in modules effectively behave as superclasses."

There you go. Now you understand namespaces and mixins. If you don't, email me and tell me I did a poor job of explaining it / stringing together internet examples. I will not be offended and will likely thank you for the feedback.