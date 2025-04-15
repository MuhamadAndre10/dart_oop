// class di bawah adalah interface yang di buat dengan abstract class.
// interface adalah "kontrak" yang harus di penuhi oleh class yang mengimplementasikan interface tersebut.
abstract class Car {
  String? model;
  String? color;

  void drive(); // Abstract method, must be implemented by subclasses
}

// * Interface is a contract that a class must implement
class Truct implements Car {
  @override
  String? color;

  @override
  String? model;

  @override
  void drive() {
    // TODO: implement drive
  }
}
