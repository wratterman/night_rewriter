# Night ReWriter

Given this [classic Mod 1 project](http://backend.turing.io/module1/projects/night_writer), imagine what you can do with your magical Mod 4 power to refactor this codebase.

**Note: feel free to ignore the file I/O part of the project spec."

The NightWriter class in `./lib/night_writer.rb` knows quite a bit about the details of how to decode and encode text to and from braille. With abstraction, polymorphism, inheritance, and encapsulation in mind, refactor this program to better align with object-oriented design.

## Learning Goals

* Comprehend a brown-field Ruby project
* Improve the project using Ruby best-practices
* Redesign and refactor the project using the four pillars of OOP:
  * Abstraction
  * Polymorphism
  * Inheritance
  * Encapsulation
* Implement sophisticated Ruby patterns and methods

## Setup

**Ruby version: `2.4.1`**

Clone this directory and get yourself `cd`ed into it. Then:

```
bundle
```

Run the whole test suite with:

```
rake
```

Run a single test with your standard:

```
ruby test/the_test_file_test.rb
```

## Constraints

Some external apps depend on the `NighWriter#encode_to_braille` and `NighWriter#encode_from_braille` interface. Your refactoring cannot change the end functionality or naming of these methods.

## Things to keep in mind

* Single responsibility principle: "who" (i.e., which classes) should be responsible for what?

* Abstraction: hide the details of implementation from classes and objects that don't need to know about those details.
  * Focus on **what** an object can do, not **how** it does it.

* Polymorphism: how can you create objects with similar interfaces (i.e., methods) to promote easier collaboration?
* Inheritance: do two or more classes have similar behavior that could be inherited from a parent class or module?
* Encapsulation: which pieces of data and behavior belong in their own class?

## Ruby Muscle

![flexing pikachu](https://media.giphy.com/media/l2SqbUETv1PYfPevK/giphy.gif)

* Limit your use of `Array#each`, `for`, and `times` loops. It's possible to not use them at all 😉.
  * Enumerables are your friends!

* Think about `private` methods. Which methods don't need to be used outside of a given class?
* Look into `Array#each_slice`.
* Think back to `module`s.
* Limit complex conditional logic with a hash lookup pattern.
