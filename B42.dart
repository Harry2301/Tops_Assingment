// Print the sum, difference and product of two complex numbers by creating a class named
// 'Complex' with separate methods for each operation whose real and imaginary parts are entered by
// user.
import 'dart:io';

class Complex {
  double real;
  double imaginary;

  Complex(this.real, this.imaginary);

  Complex add(Complex other) {
    return Complex(real + other.real, imaginary + other.imaginary);
  }

  Complex subtract(Complex other) {
    return Complex(real - other.real, imaginary - other.imaginary);
  }

  Complex multiply(Complex other) {
    double realProduct = real * other.real - imaginary * other.imaginary;
    double imagProduct = real * other.imaginary
        + imaginary * other.real;
    return Complex(realProduct, imagProduct);
  }
}

void main() {
  stdout.write("Enter the real part of the first complex number: ");
  double real1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the imaginary part of the first complex number: ");
  double imag1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the real part of the second complex number: ");
  double real2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the imaginary part of the second complex number: ");
  double imag2 = double.parse(stdin.readLineSync()!);

  Complex num1 = Complex(real1, imag1);
  Complex num2 = Complex(real2, imag2);

  Complex sum = num1.add(num2);
  Complex diff = num1.subtract(num2);
  Complex prod = num1.multiply(num2);

  print("Sum: ${sum.real} + ${sum.imaginary}i");
  print("Difference: ${diff.real} + ${diff.imaginary}i");
  print("Product: ${prod.real} + ${prod.imaginary}i");
}
