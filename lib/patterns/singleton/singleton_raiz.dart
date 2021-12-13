import 'dart:math';

class SingletonRaiz {
  static SingletonRaiz? _instance;

  int id = Random().nextInt(100);
  SingletonRaiz._();

  static get instance {
    return _instance ??= SingletonRaiz._();
  }
}
