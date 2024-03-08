import 'dart:io';

void main() {
  
  stdout.write('enter the grade: ');
  String input = stdin.readLineSync() ?? '';

  int point = int.tryParse(input) ?? 0;

  int outof10 = (point ~/ 10);

  String grade;
  switch (outof10) {
    case 10:
      grade = 'A';
      break;
    case 9:
      grade = 'A';
      break;
    case 8:
      grade = 'B';
      break;
    case 7:
      grade = 'C';
      break;
    case 6:
      grade = 'D';
      break;
    default:
      grade = 'F';
      break;
  }

  print(grade);
}