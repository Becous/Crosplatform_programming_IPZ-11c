import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('StreamBuilder Example'),
        ),
        body: NumberStream(),
      ),
    );
  }
}

class NumberStream extends StatefulWidget {
  @override
  _NumberStreamState createState() => _NumberStreamState();
}

class _NumberStreamState extends State<NumberStream> {
  StreamController<int> _streamController = StreamController<int>();

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<int>(
        stream: _streamController.stream,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if (snapshot.hasData) {
            return Text('Отримано число: ${snapshot.data}',
                style: TextStyle(fontSize: 20.0));
          } else if (snapshot.hasError) {
            return Text('Помилка: ${snapshot.error}');
          } else {
            return Text('Очікування чисел...');
          }
        },
      ),
    );
  }

  // Функція для генерації чисел та додавання їх до потоку
  Future<void> generateNumbers() async {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      _streamController.add(i);
    }
    _streamController.close();
  }

  @override
  void initState() {
    super.initState();
    generateNumbers();
  }
}
