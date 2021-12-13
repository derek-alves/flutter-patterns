import 'dart:math';

class SingletonFactory {
  static SingletonFactory? _instance;

  int id = Random().nextInt(100);

  SingletonFactory._();

  factory SingletonFactory() {
    return _instance ??= SingletonFactory._();
  }
}
