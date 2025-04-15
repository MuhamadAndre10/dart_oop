class Product {
  String? name;

  // toString methos override from Object class
  @override
  String toString() {
    return 'Product(name: $name)';
  }
}

void main(List<String> args) {
  var product = Product();
  product.name = 'Laptop';
  // Using the toString method to print the object
  print(product); // Output: Product(name: Laptop)
  // kita tidak perlu lagi menulis print(product.toString())
  // karena kita sudah override toString
  print(product.toString()); // Output: Product(name: Laptop)
}
