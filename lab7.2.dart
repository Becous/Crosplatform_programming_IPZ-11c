import 'dart:async';
import 'dart:io';

Future<void> mainFunc() async {
  stdout.write('Введіть час затримки (у секундах): ');
  int inputTime = int.parse(stdin.readLineSync() ?? '0');

  print('Таймер запущено на $inputTime секунд');

  await Future.delayed(Duration(seconds: inputTime));

  print('Таймер завершено!');
}

void main() {
  mainFunc();
}
