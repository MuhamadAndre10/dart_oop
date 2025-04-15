// Typedef alias dari sebuah class

class Sum {
  void sayHello() {
    print("Hello World");
  }
}

// typedef adalah alias dari sebuah class, kita bisa menggunakan typedef untuk membuat alias dari sebuah class
typedef Jumlah = Sum;

// typedef juga bisa digunakan untuk function
typedef Filter = String Function(String);

void sayHello(String name, Filter filter) {
  print(filter(name));
}

void main(List<String> args) {
  Jumlah jumlah = Jumlah();
  jumlah.sayHello(); // Output: Hello World

  sayHello("Andre", (value) => value.toUpperCase()); // Output: Hello Andre
}
