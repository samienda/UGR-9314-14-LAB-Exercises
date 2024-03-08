import 'dart:io';

void main() {
  print("enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("choose the operation from  (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  double result;

  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
      print("invalid input");
      return;
  }

  print(result);
}
