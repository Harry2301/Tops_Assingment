// B37. Create a class to print the area of a square and a rectangle. The class has two methods with the
// same name but different number of parameters. The method for printing area of a rectangle has two
// parameters which are length and breadth respectively while the other method for printing area of
// square has one parameter which is side of square.


class Shape {
  void printArea(int side) {
    print("Area of square: ${side * side}");
  }

  void printArea(int length, int breadth) {
    print("Area of rectangle: ${length * breadth}");
  }
}

// example usage
void main() {
  Shape shape = Shape();

  shape.printArea(5); // prints "Area of square: 25"
  shape.printArea(4, 6); // prints "Area of rectangle: 24"
}




