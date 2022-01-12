import 'package:flutter/material.dart';

import 'decorator.dart';

class DecoratorPage extends StatefulWidget {
  final Service service;

  const DecoratorPage({Key? key, required this.service}) : super(key: key);

  @override
  _DecoratorPageState createState() => _DecoratorPageState();
}

class _DecoratorPageState extends State<DecoratorPage> {
  var isLoading = false;
  var data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decorator'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isLoading == true ? CircularProgressIndicator() : Container(),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isLoading = true;
                });
              },
              child: Text("Fetch data")),
        ],
      )),
    );
  }
}
