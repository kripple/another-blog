---
title: "Hash-tastic"
date: 2015-06-08
draft: false
tags: ["ruby", "hash", "array"]
---

This week I learned about the glorious data storage object that is the Hash. The following will be some fun information on how to differentiate, define, and reference arrays and hashes. Arrays and hashes are both constucts used for data storage. Their construction and syntax are different, so depending on what you're trying to do, one will likely be better than the other for specific applications.

# Define
### Array
Ordered, iteger-indexed collections of any object. Array indexing starts at `0` and goes to `(n-1)`, where n is the number of array indices. A negative index is assumed to be relative to the end of the array—that is, an index of `-1` indicates the last element of the array, `-2` is the next to last element in the array, and so on.

### Hash
A collection of key-value pairs. Indexing is done via arbitrary keys of any object type. Hashes order their values in the sequence that the corresponding keys were inserted. By default, hashes return `'nil'` when accessing keys that do not exist in the hash. It's possible to define this value to something other than `'nil'` (see below).

# Create
`Array.new` is functionally the same as `array = []` for creating a new array, except `Array.new` has some fun options for initializing the array however you like. For example:

``` ruby
Array.new # => []
Array.new(2) # => [nil,nil]
Array.new(3,"apple") # => ["apple","apple","apple"]
```

Or the following:

``` ruby
example_array = [1,2,3]
copycat_array = Array.new(example_array) # => [1,2,3]
```

The procedure for creating a new hash is all but identical: `Hash.new`, or `hash = {}`. Similarly, Hash.new can do the following:

``` ruby
Hash.new # => {}
Hash.new(2) # => {}
Hash.new(3,"apple") # => probably a syntax error (don't do this)
```

The `Hash.new(argument)` is the default value for accessing keys that do not exist in the hash. If you were to create an empty hash with the argument '2', and then try to access a nonexistent key (since our hash is empty in this example, ALL keys are nonexistent), the hash would return '2' instead of returning 'nil'.

# Access
This is the easiest part:

``` ruby
puts array[integer] # => value of the array at the specified integer 
puts hash["key"] # => value of the hash at the specified key
```
Arrays have integer index-value pairs, hashes have key-value pairs. Try creating and then accessing array/hash values at indices/keys that do not exist. That way, you'll be able to recognize it if you ever do it unintentionally.

# Bonus
``` ruby
puts array.index(value) # => index of the array at the specified value
puts hash.key(value) # => key of the hash at the specified value
```
For duplicate values at different indices/keys, the above two statements will return the first index/key that corresponds to the specified value. But don't take my word for it, try it for yourself!