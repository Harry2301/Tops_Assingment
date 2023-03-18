// B36. Create a class to print an integer and a character with two methods having the same name but
// different sequence of the integer and the character parameters. For example, if the parameters of the
// first method are of the form (int n, char c), then that of the second method will be of the form (char c,
// int n).

import 'dart:io';

class Printer {
  void printIntStr(int n, String c) {
    print('$n $c');
  }

  void printStrInt(String c, int n) {
    print('$c $n');
  }
}
 void main(){
   Printer printer = Printer();
   printer.printIntStr(42, 'a'); // prints "42 a"
   printer.printStrInt('b', 99); // prints "b 99"
 }
