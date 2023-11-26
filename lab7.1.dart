import 'dart:async';

Future<int> doubleNumAsync(int number) async {
  return Future.delayed(Duration(seconds: 1), () => number * 2);
}

void main() async {
  int num = 5;

  print('Початок обчислення');
  Future<int> newNum = doubleNumAsync(num);

  print('Чекаємо на результат');
  int result = await newNum;

  print('Подвоєне значення введеного числа: $result');
}
