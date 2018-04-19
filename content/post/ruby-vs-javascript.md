---
title: "Ruby vs. Javascript"
date: 2015-07-12
draft: false
tags: ["ruby","javascript"]
---

I used JavaScript for the first time this week (woo!). This post will be about JavaScript, the programming language, and how it differs in syntax and useability from a few other languages.

I first learned how to program in high school. The year was 2007 and the language was Visual Basic. To me, it was a simple, easy to use, easy to learn language. In college I learned C, along with the basics of computer organization and machine languages. When I began Dev Bootcamp, I learned Ruby. Ruby blew my mind (if you'll pardon the cliché). So intuitive, so simple, so powerful - Ruby was a joy to use. It was at this point in my education that I was introduced to JavaScript. I expected that it would be just as strange and wonderful as Ruby, and boy was I wrong! JavaScript shares many syntactical similarities with Ruby, but it doesn't behave like I now expect a programming language to behave.

## Arrays
One of the first things I found myself struggling with in JavaScript was array comparison. A simple `[1,2,3] == [1,2,3]` evaluates to false. Comparison in JavaScript, come to find, is really quite messy. There's even extra comparator operators (`=== `and `!==`). The solution to array comparison is to write your own comparison function. I took this one from the internet and modified it for my own purposes.

Important to note - in Ruby, `<<` works to append elements to an array. In JavaScript, you must use the `push()` method.

## Functions
In Ruby, a function is declared like so:

``` ruby
def HelloWorld()
  puts "Hello, World!"
end

HelloWorld() # <-- "Hello, World!"
```  

In JavaScript, it's a bit weirder.

Javascript has three ways of defining functions: declaration, expression, and construction. It actually has more than three, but these are the most commonly used.

## Function Declaration
Uses the 'function' keyword, can be called from anywhere in the code (even above the declaration), DO NOT put into any loops or conditionals. Function declarations are intended to be separate from the logical flow of the program at runtime. Function declarations do not need a semicolon, but using one is harmless.

``` ruby
// Function Declaration Example //

function helloWorld() {
  console.log("Hello, World!");
}

helloWorld() // <-- "Hello, World!"

var storage = helloWorld();
console.log(storage) // <-- "Hello, World!"
```
  
## Function Expression
Creates a 'nameless' function, evaluated at runtime, end with a semicolon like all other expressions.

``` ruby 
// Function Expression Example //

var some_variable = function() {
  console.log("Pass me to variables, I don't have a name on my own.");
};

some_variable() // <-- "Pass me to variables, I don't have a name on my own."
```  

## Function Constructor
This one gave me the most trouble this week. It's a function declaration that uses the 'this' method to list properties, and is called with the 'new' keyword. Using functions in this way allows for multiple instances of the same function, much like Ruby class objects.

``` ruby
// Function Constructor Example //

function messageTranslator() {
  this.message = "Hello, Sweetie.";
};

var read_this = new messageTranslator() 
console.log(read_this.message); // <-- "Hello, Sweetie."
```
  
The difference between function declarations and function constructors is minimal. I'm by no means an experienced JavaSript programmer, but I have a feeling that the subtle difference in useage lead to significant design differences. Either that, or a function constructor IS a function declaration, just with extra useage. I will update once I learn more. Check out [Eloquent JavaScript](http://eloquentjavascript.net/03_functions.html), by Marijn Haverbeke for more information.
