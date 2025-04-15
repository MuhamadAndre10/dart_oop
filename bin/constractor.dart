class Property {
  // Properties of the Property class
  String name;
  String type;
  bool isRequired;
  int quantity;

  // ! Constructor for the Property class
  // keyword this is used to refer to the current instance of the class
  // The constructor takes three parameters: name, type, and isRequired (default value is false)
  Property(this.name, this.type, this.quantity, {this.isRequired = false});

  Property.named(
    this.name,
    this.type,
    this.quantity, {
    this.isRequired = false,
  });
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  // Named constructor & redirecting contructor
  Rectangle.square(double size) : this(size, size);
}

// ! Initialer list contructor
class User {
  String firstName;
  String lastName;
  String fullName;

  User(this.firstName, this.lastName) : fullName = "$firstName $lastName" {
    print("User created: $fullName");
  }
}

// ! constant constructor
class ConstantClass {
  final int x;
  final int y;

  const ConstantClass(this.x, this.y);
}

// ! Factory constructor
class Database {
  Database() {
    print("Database created");
  }

  static Database db = Database();

  factory Database.create() {
    return db;
  }
}

void main() {
  // Named Constructor & redirecting constructor
  var r1 = Rectangle(10, 20);
  var r2 = Rectangle.square(10);

  print("r1: ${r1.width} x ${r1.height}"); // Output: r1: 10.0 x 20.0
  print("r2: ${r2.width} x ${r2.height}"); // Output: r2: 10.0 x 10.0

  // * initializer list constructor
  var u1 = User('Andre', 'Priyanto');
  print("User: ${u1.fullName}");

  // Constant constructor
  // * const constructor is used to create compile-time constants
  var x = ConstantClass(10, 10);
  var y = ConstantClass(10, 10);
  // * different instance but same value
  print(x == y); // Output: false

  var a = const ConstantClass(10, 10);
  var b = const ConstantClass(10, 10);
  // * same instance and same value
  print(a == b); // Output: true

  // Factory Constructor
  var db1 = Database.create();
  var db2 = Database.create();

  print(db1 == db2); // Output: true
}
