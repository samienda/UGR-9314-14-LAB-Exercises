bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  
  return true;
}

void findAllPrimes(int start, int end) {
  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}

void main() {
  int start = 1;
  int end = 100;
  
  findAllPrimes(start, end);
}