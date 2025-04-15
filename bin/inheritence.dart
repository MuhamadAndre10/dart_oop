class HelloWorld {
  void say(String name) {
    print("Hello World $name");
  }
}

class Say extends HelloWorld {
  // if you want to override the method say in the HelloWorld class, you must use the @override annotation
  // and the method must have the same name and parameter as the method in the HelloWorld class
  @override
  void say(String name) {
    print('hello $name');
  }
}

// konsep overide
class A {
  String name = "A";

  void say() {
    print("Hello $name");
  }
}

class B {
  // Field override
  String name = 'B';
}

void main() {
  var hello = HelloWorld();
  hello.say("andre");

  var say = Say();
  say.say("ari");

  // contoh overide
  var a = A();
  a.say(); // Output: Hello A
  var b = B();
  b.name = "B"; // Output: Hello B
}
