// We have to calculate the percentage of marks obtained in three subjects (each out of 100) by
// student A and in four subjects (each out of 100) by student B. Create an abstract class 'Marks' with an
// abstract method 'getPercentage'. It is inherited by two other classes 'A' and 'B' each having a method
// with the same name which returns the percentage of the students. The constructor of student A takes
// the marks in three subjects as its parameters and the marks in four subjects as its parameters for
// student B. Create an object for eac of the two classes and print the percentage of marks for both the
// students.

abstract class Marks {
  double getPercentage(List<int> marks);
}

class A extends Marks {
  List<int> _marks;

  A(int m1, int m2, int m3) {
    _marks = [m1, m2, m3];
  }

  double getPercentage(List<int> marks) {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    double percentage = (total / (marks.length * 100)) * 100;
    return percentage;
  }
}

class B extends Marks {
  List<int> _marks;

  B(int m1, int m2, int m3, int m4) {
    _marks = [m1, m2, m3, m4];
  }

  double getPercentage(List<int> marks) {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    double percentage = (total / (marks.length * 100)) * 100;
    return percentage;
  }
}

void main() {
  A studentA = A(70, 80, 90);
  B studentB = B(60, 70, 80, 90);

  print("Student A Percentage: ${studentA.getPercentage(studentA._marks)}%");
  print("Student B Percentage: ${studentB.getPercentage(studentB._marks)}%");
}



