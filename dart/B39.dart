// Create a class named 'Member' having the following members: Data members 1 - Name 2 - Age 3
// - Phone number 4 - Address 5 - Salary It also has a method named 'printSalary' which prints the salary
// of the members. Two classes 'Employee' and 'Manager' inherits the 'Member' class. The 'Employee'
// and 'Manager' classes have data members 'specialization' and 'department' respectively. Now, assign
// name, age, phone number, address and salary to an employee and a manager by making an object of
// both of these classes and print the same.
import 'dart:io';

class member {
  String? name;
  int? age;
  int? phone_number;
  String? Address;
  int? salary;

  void input_empl_data() {
    print("Enter employee name : = ");
    name = stdin.readLineSync()!;
    print("Enter employee age : ");
    age = int.parse(stdin.readLineSync()!);
    print("Enter employee phone number");
    phone_number = int.tryParse(stdin.readLineSync()!);
    print("Enter employee Salary : ");
    salary = int.parse(stdin.readLineSync()!);
    print("Enter employee address :");
    Address = stdin.readLineSync()!;
  }

  void show_empl_data() {
    print("\n\nEmployee Name = $name"
        "\nEmployee Age = $age \nEmployee Phone number = $phone_number"
        "\nAddress = $Address\nSalary = $salary");
  }

  void printSalary() {
    print("Salary = $salary");
  }
}

class employee extends member {
  String? specialization;
  void input_empl_specialization() {
    print("Enter specialization : ");
    specialization = stdin.readLineSync()!;
  }

  void show_empl_specialization() {
    print("Employee Specialization : $specialization");
  }
}

class manager extends employee {
  String? department;
  String? manager_name;
  void manager_details() {
    print("Enter manager name :-");
    manager_name = stdin.readLineSync()!;
    print("Enter department :-");
    department = stdin.readLineSync()!;
  }

  void show_manager_details() {
    print("\nManager assigned = $manager_name\ndepartment = $department");
  }
}

void main() {
  manager obj = new manager();
  obj.input_empl_data();
  obj.input_empl_specialization();
  obj.manager_details();
  obj.show_empl_data();
  obj.show_empl_specialization();
  obj.show_manager_details();
}
