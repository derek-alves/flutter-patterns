import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

abstract class Service {
  Future<String> getData();
}

class AppService implements Service {
  @override
  Future<String> getData() async {
    final ConnectivityResult status = await (Connectivity().checkConnectivity());

    if (status.name == ConnectivityResult.none) throw SocketException("no connection");

    return 'Here is the data';
  }
}
