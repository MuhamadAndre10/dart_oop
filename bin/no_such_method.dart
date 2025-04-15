import 'dart:mirrors';

// kita bisa memanfaatkan abstract class untuk membatasi method
abstract class CategoryRepository {
  void id(String id);
  void name(String name);
  void quantity(int quantity);
}

// konsep noSuchMethod.
// NoSuchMethod merupakan sebuah method yang terdapat di class Object yang bisa kita override untuk mendeteksi
// atau bereaksi ketika sebuah method yang tidak ada dipanggil pada sebuah object.
// NoSuchMethod ini bisa kita gunakan untuk membuat proxy object, mock object, atau dynamic method invocation.
// NoSuchMethod ini juga bisa kita gunakan untuk membuat method chaining.
class Repositry extends CategoryRepository {
  final String _name;

  Repositry(this._name);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    // invocation.memberName adalah nama method yang dipanggil.
    // kita bisa menggunakan MirrorSystem.getName untuk mendapatkan nama method yang dipanggil.
    var value = invocation.positionalArguments.first;
    // invocation.positionalArguments adalah argumen yang dipanggil pada method tersebut.
    var sql = "select * from $_name where $column = $value";
    print(sql);
  }
}

void main(List<String> args) {
  // type repository harus dynamic. karena
  CategoryRepository repository = Repositry('product');

  // karena method id, name dan quantity tidak ada di class Repository. maka akan secara otomatis memanggil method noSuchMethod.
  repository.id('1');
  repository.name("earphone");
  repository.quantity(100);

  // Output:
  // select * from product where id = 1
  // select * from product where name = earphone
  // select * from product where quantity = 100
}
