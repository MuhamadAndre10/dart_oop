class Shape {
  int width;
  int hight;

  Shape(this.hight, this.width);

  int getCorner() {
    return 0;
  }
}

class Rectangle extends Shape {
  Rectangle(int width, int height) : super(width, height);

  @override
  int getCorner() {
    return 4;
  }

  // super keyword
  int getParentCorner() {
    return super.getCorner();
  }
}
