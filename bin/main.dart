void main() {
  Person person = Person("Andre", 20);

  person.greet();

  person.age = 21; // Updating the age property
  person.greet();

  person.sayHaii(); // Calling the sayHaii method

  // Using the extension method
  person.sayGoodBye(); // Calling the sayGoodBye method from the extension
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Method for the class person
  void greet() {
    print("Hello, my name is $name and I am $age years old.");
  }

  // Methos Expresion for the class person
  void sayHaii() => print("Haii $name");
}

/* 
The above code defines a Person class with properties name and age. 
- It creates an instance of the Person class, 
- calls the greet method to print a greeting message, 
- updates the age property, and 
- calls the sayHaii method to print a different message.

The greet method uses string interpolation to include the name and age in the message. 
The sayHaii method is defined using a method expression, which is a shorthand way to define a method that consists of a single expression. 
*/

// Extension on the Person class to add a new method
extension PersonExtension on Person {
  void sayGoodBye() {
    print("Goodbye, $name!");
  }
}
