// B43. Create an abstract class 'Parent' with a method 'message'. It has two subclasses each having a
// method with the same name 'message' that prints "This is first subclass" and "This is second subclass"
// respectively. Call the methods 'message' by creating an object for each subclass.
import 'dart:io';

abstract class Parent {
  void message();
}

class subclass_1 extends Parent {
  @override
  void message() {
    print("This is first subclass");
  }
}

class subclass_2 extends subclass_1 {
  void message() {
    print("This is second subclass");
  }
}

void main() {
  subclass_1 obj1 = new subclass_1();
  subclass_2 obj2 = new subclass_2();
  obj1.message();
  obj2.message();
}
