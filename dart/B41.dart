//Write a program to print the area and perimeter of a triangle having sides of 3, 4 and 5 units by
//creating a class named 'Triangle' without any parameter in its constructor.

class triangle {
  int? a, b, c;

  triangle() {
    a = 50;
    b = 30;
    c = 70;
  }

  void display() {
    int perimeter = a! + b! + c!;
    print("Perimeter of triangle : $perimeter");
  }
}

void main() {
  triangle obj = new triangle();
  obj.display();
}
