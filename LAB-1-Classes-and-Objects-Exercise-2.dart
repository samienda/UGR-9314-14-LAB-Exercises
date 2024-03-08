import 'LAB-1-Classes-and-Objects-Exercise-1.dart' show Person;

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, this.rollNumber, this.marks, String address) : super(name, age, address);

  int findtotalmarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double findaveragemarks() {
    int total = findtotalmarks();
    return total / marks.length;
  }
}

void main() {
  Student student1 = Student('sami', 18, 1, [80, 85, 90], 'kara kore');
  Student student2 = Student('enda', 19, 2, [75, 70, 80], '6 kilo');

  int totalmarks1 = student1.findtotalmarks();
  double averagemarks1 = student1.findaveragemarks();

  int totalmarks2 = student2.findtotalmarks();
  double averagemarks2 = student2.findaveragemarks();

  print('Student1 - totalmarks: $totalmarks1, averagemarks: $averagemarks1');
  print('Student2 - totalmarks: $totalmarks2, averagemarks: $averagemarks2');
}