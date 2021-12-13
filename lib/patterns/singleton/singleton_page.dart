import 'package:flutter/material.dart';

class SingletonPage extends StatefulWidget {
  const SingletonPage({Key? key}) : super(key: key);

  @override
  _SingletonPageState createState() => _SingletonPageState();
}

class _SingletonPageState extends State<SingletonPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Singleton'),
      ),
      body: Container(),
    );
  }
}
