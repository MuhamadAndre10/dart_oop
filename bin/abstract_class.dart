// Abstract class is a class that cannot be instantiated. It can only be extended by other classes.
// Abstract classes are used to define a common interface for a group of related classes. They can contain abstract methods (methods without a body) and concrete methods (methods with a body).
// Abstract classes are useful when you want to define a common interface for a group of related classes, but you don't want to provide a default implementation for all methods. Instead, you want to force the subclasses to provide their own implementation for the abstract methods.
abstract class Person {
  String? name;
  int? age;

  void username();
}

class Student extends Person {
  // Method from the abstract class Person must be implemented in the subclass
  // and the method must have the same name and parameter as the method in the Person class
  @override
  void username() {
    print("Student: $name, age: $age");
  }
}

void main() {
  var student = Student();
  student.name = "andre";
  student.age = 23;
  student.username(); // Output: Student: andre, age: 23
}
