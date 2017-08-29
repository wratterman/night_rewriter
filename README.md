# Night ReWriter

The NightWriter class in `./lib/night_writer.rb` knows quite a bit about the details of how to decode and encode text to and from braille. With abstraction, polymorphism, inheritance, and encapsulation in mind, refactor this program to better align with object-oriented design.

## Learning Goals

* Comprehend a brown-field Ruby project
* Improve the project using Ruby best-practices
* Redesign and refactor the project using the four pillars of OOP
* Implement sophisticated Ruby patterns and methods

## Constraints

Some external apps depend on the `NighWriter#encode_to_braille` and `NighWriter#encode_from_braille` interface. Your refactoring cannot change the end functionality or naming of these methods.

## Things to keep in mind

* Single responsibility principle: "who" (i.e., which classes) should be responsible for what?

* Abstraction: hide the details of implementation from classes and objects that don't need to know about those details.
  * Focus on **what** an object can do, not **how** it does it.

* Polymorphism: how can you create objects with similar interfaces (i.e., methods) to promote easier collaboration?
* Inheritance: do two or more classes have similar behavior that could be inherited from a parent class or module?
* Encapsulation: which pieces of data and behavior belong in their own class?

