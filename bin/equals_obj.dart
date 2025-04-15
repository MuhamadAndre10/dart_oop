class Category {
  int? id;
  String? name;

  Category({this.id, this.name});

  @override
  bool operator ==(Object other) {
    // TODO: implement ==

    if (other is Category) {
      if (id != other.id) {
        return false;
      } else if (name != other.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  // hashCode method override from Object class
  // hashCode wajib ada ketika kita mengoverride == Object.
  // kita wajib mengoverride hashCode juga.
  // hashCode digunakan untuk membandingkan dua object yang sama
  @override
  int get hashCode {
    var result = id.hashCode;
    result = 31 * result + name.hashCode;
    return result;
  }
}

void main(List<String> args) {
  var category1 = Category(id: 1, name: 'Laptop');
  var category2 = Category(id: 1, name: 'Laptop');
  var category3 = Category(id: 2, name: 'Smartphone');

  print(category1 == category2);
  // Output: true because id and name are the same
  print(category1 == category3);
  // Output: false

  // hasilnya sama, karena kita sudah mengoverride hascode. jika tidak maka hasilnya berbeda.
  print(category1.hashCode); // 678314200
  print(category2.hashCode); // 678314200
}
