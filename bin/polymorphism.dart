// Polymorphism is a concept in OOP that allows objects of different classes to be treated as objects of a common superclass.
// It is a way to perform a single action in different forms. In Dart, polymorphism can be achieved through method overriding and operator overloading.
// It allows you to define a method in a superclass and override it in a subclass, providing a specific implementation for that method in the subclass.
// This allows you to use the same method name in different classes, but with different implementations.

class Animal {
  void makeSound() {
    print('Generic animal sound');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }

  void scratch() {
    print('Scratching!');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }

  void fetchBall() {
    print('Fetching the ball!');
  }
}

void interackWithAnimal(Animal animal) {
  animal.makeSound(); // Calls the overridden method in the specific subclass

  if (animal is Cat) {
    animal.scratch();
  } else if (animal is Dog) {
    animal.fetchBall();
  }
}

void main() {
  interackWithAnimal(Cat());
  interackWithAnimal(Dog());
}
