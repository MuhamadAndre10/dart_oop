// Static Keyword yang digunakan untuk membuat field atau method yang dapat di akses tanpa menginisialisasikanya.
// * Field / Method static dapat diakses oleh method non static. but sebaliknya method/field static tidak dapat mengakses method non static

class Product {
  static final String name = 'Laptop';
  static final String type = 'Hp';
}

void main(List<String> args) {
  print(Product.name);
  print(Product.type);
}
