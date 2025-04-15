// callable class: fitur yang memungkinkan kita untuk memanggil instance dari class layaknya function

class Sum {
  int a;
  int b;

  Sum(this.a, this.b);

  // kita bisa mengoverride call method untuk memanggil instance dari class ini layaknya function
  int call(int a, int b) {
    return a + b;
  }
}

void main(List<String> args) {
  var sum = Sum(1, 2);
  // kita bisa memanggil instance dari class ini layaknya function
  print(sum(1, 2)); // Output: 3
  // kita juga bisa memanggil method call secara langsung
  print(sum.call(1, 2)); // Output: 3
}
