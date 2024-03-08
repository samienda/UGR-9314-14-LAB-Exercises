import 'dart:io';

const double speed = 299792458;

void main() {
  print('Enter the distance');
  final distanceinput = stdin.readLineSync();

  if (distanceinput != null && double.tryParse(distanceinput) != null) {

    final distance = double.parse(distanceinput);
    final time = distance / speed;
    
    print(time);
  } else {
    print('Invalid input');
  }
}
