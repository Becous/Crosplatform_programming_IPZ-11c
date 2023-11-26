import 'dart:async';

void main() {
  StreamController<int> streamController = StreamController<int>();

  Future<void> generateNumbers() async {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      streamController.add(i);
    }
    streamController.close();
  }

  generateNumbers();

  streamController.stream.listen((int number) {
    print('Отримано число: $number');
  }, onDone: () {
    print('Послідовність завершена');
  });
}
