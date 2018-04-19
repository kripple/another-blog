---
title: "Method: Map"
date: 2015-06-14
draft: false
tags: ["ruby", "map","alias","module","destructive","nondestructive"]
---

I'm quite new to the realm of Ruby. Don't get me wrong, I'm a hughe fan. There are just a few things (many, many things) that I don't quite understand yet. I'm going to throw some concept descriptions down below, but just so you know where I'm going with this - this post is about the Ruby 'map' method. It's a super-simple, super-useful method. See below for descriptions and examples.

## Define
Alias - Methods with different names that operate identically. Often included out of consideration for programmers that use multiple languages (`map` and `collect` are aliases).

Module - Modules are a way of grouping together methods, classes, and constants - like a package! Collection of code that someone has written that you can now use. Reuseable code.

Mixin - ??? (like I said above, I don't know everything, yet)

The Enumerable Module (the map method belongs to this module) - traversal (iterative), can do serching, sorting, and comparisons. Really Useful Stuff.

The Map Method - Takes an array, performs a specified operation or operations on each element, returns a new array with new elements.

Destuctive vs. Nondestructive Methods - `map` is a nondestructive method, `map!` is a destructive method. The only difference between the two is that `map!` will change (destroy) the array you give it, and `map` will not. `map` will create and return a `new Array` instance with your new values.

## Examples
``` ruby
input_array = [1,2,3,4,5] # => [1,2,3,4,5]
new_array = input_array.map { |i| i + 5 } # => [6,7,8,9,10]
input_array # => [1,2,3,4,5]
  ```

  ``` ruby
new_array = input_array.map! { |i| i + 5 } # => [6,7,8,9,10]
input_array # => [6,7,8,9,10]
```
  
## In Conclusion:
``` ruby
new_array = input_array.map { |i| code block } 

# i = current array value, 
# i goes from input_array[0] to input_array[input_array.length - 1]
# code block = operations to perform with/on each array value
# => (arrow means 'returns') new array with values altered according to the code block 
```

Hopefully that made sense. Can anyone explain what a mixin is? (Edit - Read this post I made about Modules, Classes, Namespace, and Mixins).