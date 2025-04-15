//  Get dan Set di dart sebenernya adalah method yang digunakan untuk mengakses dan memodifikasi nilai dari variabel private di dalam class.

class Person {
  String _name = '';
  int _age = 0;

  // Getter untuk name
  String get name => _name;

  // Setter untuk name
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  // Getter untuk age
  int get age => _age;

  // Setter untuk age dengan validasi
  set age(int value) {
    if (value >= 0) {
      _age = value;
    } else {
      print("Age can't be negative");
    }
  }
}

void main() {
  var p = Person();

  p.name = "Alice"; // pakai setter
  p.age = 25; // pakai setter

  print(p.name); // pakai getter → Alice
  print(p.age); // pakai getter → 25

  p.age = -5; // akan ditolak oleh setter
}
