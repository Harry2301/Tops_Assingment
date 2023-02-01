import 'dart:io';

void main() {
  int age,
      product_gm = 0,
      cur_gold_price = 0,
      total_price = 0,
      wo_making_charges = 0,
      making_charges = 845,
      total_making_charges = 0;
  double discount = 0, new_total_price = 0;

  String gender, name, product_name;
  print("Enter age");
  age = int.parse(stdin.readLineSync()!);
  print("Enter Gender");
  gender = (stdin.readLineSync()!);
  print("Enter name");
  name = (stdin.readLineSync()!);
  print("Enter Product name");
  product_name = (stdin.readLineSync()!);
  print("Enter product gram");
  product_gm = int.parse(stdin.readLineSync()!);
  print("Enter current gold price");
  cur_gold_price = int.parse(stdin.readLineSync()!);
  total_making_charges = product_gm * making_charges;
  total_price = (cur_gold_price * product_gm) + total_making_charges;
  print("Total: $total_price");
  wo_making_charges = cur_gold_price * product_gm;
  if (gender == 'Male' || gender == 'M' || gender == 'male' || gender == 'm') {
    if (age > 65) {
      if (wo_making_charges > 200000 && wo_making_charges < 300000) {
        discount = (wo_making_charges * 20) / 100;
        print("Discounted price $discount");
      } else if (wo_making_charges > 300000 && wo_making_charges < 500000) {
        discount = (wo_making_charges * 30) / 100;
        print("Discounted price $discount");
      } else if (wo_making_charges > 500000) {
        discount = (wo_making_charges * 35) / 100;
        print("Discounted price $discount");
      } else if (wo_making_charges < 200000) {
        print("No discount availed");
      } else if (age < 65) {
        if (wo_making_charges > 200000 && wo_making_charges < 300000) {
          discount = (wo_making_charges * 10) / 100;
          print("Discounted price $discount");
        } else if (wo_making_charges > 300000 && wo_making_charges < 500000) {
          discount = (wo_making_charges * 20) / 100;
          print("Discounted price $discount");
        } else if (wo_making_charges > 500000) {
          discount = (wo_making_charges * 25) / 100;
          print("Discounted price $discount");
        } else if (wo_making_charges < 200000) {
          print("No discount availed");
        }
      }
    }
  } else if (gender == 'Female' ||
      gender == 'F' ||
      gender == 'female' ||
      gender == 'f') {
    if (age > 65) {
      if (wo_making_charges > 200000 && wo_making_charges < 300000) {
        discount = (wo_making_charges * 25) / 100;
        print("Discounted price $discount");
      } else if (wo_making_charges > 300000 && wo_making_charges < 500000) {
        discount = (wo_making_charges * 35) / 100;
        print("Discounted price $discount");
      } else if (wo_making_charges > 500000) {
        discount = (wo_making_charges * 40) / 100;
        print("Discounted price $discount");
      } else if (wo_making_charges < 200000) {
        print("No discount availed");
      } else if (age <= 65) {
        if (wo_making_charges > 200000 && wo_making_charges < 300000) {
          discount = (wo_making_charges * 15) / 100;
          print("Discounted price $discount");
        } else if (wo_making_charges > 300000 && wo_making_charges < 500000) {
          discount = (wo_making_charges * 25) / 100;
          print("Discounted price $discount");
        } else if (wo_making_charges > 500000) {
          discount = (wo_making_charges * 30) / 100;
          print("Discounted price $discount");
        } else if (wo_making_charges < 200000) {
          print("No discount availed");
        }
      }
    }
  } else {
    print("Invalid gender");
  }
  new_total_price = wo_making_charges - discount;
  // print("Discount availed: $discount");
  print("Final total with discount $new_total_price");
}
