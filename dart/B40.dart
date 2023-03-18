//Create a class named 'Rectangle' with two data members 'length' and 'breadth' and two methods
// to print the area and perimeter of the rectangle respectively. Its constructor having parameters for
// length and breadth is used to initialize the length and breadth of the rectangle. Let class 'Square'
// inherit the 'Rectangle' class with its constructor having a parameter for its side (suppose s) calling the
// constructor of its parent class as 'super (s, s)'. Print the area and perimeter of a rectangle and a
// square.
class Rectangle {
  int length;
  int breadth;

  Rectangle(this.length, this.breadth);

  void area() {
    int area = length * breadth;
    print("Area = $area");
  }

  void perimeter() {
    int peri = 2 * (length + breadth);
    print("perimeter = $peri");
  }
}

class Square extends Rectangle {
  Square(int square)
      : super(square,
            square); //this is a constructer for child class calling parent using super keyword
}

void main() {
  print("Area of rectangle : ");
  Rectangle obj1 = new Rectangle(5, 10);
  obj1.area();
  obj1.perimeter();
  print("\nArea of square :");
  Square obj2 = new Square(5);
  obj2.area();
}
