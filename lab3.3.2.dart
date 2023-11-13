import 'dart:math';

void main() {
  List<int> numbers = [125, 5, 43, 31, 24, 75];

  print(numbers.reduce(max));
  print(numbers.reduce(min));
}