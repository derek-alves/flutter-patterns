import 'package:flutter/material.dart';
import 'package:study_patterns/patterns/patterns.dart';

class SingletonPage extends StatefulWidget {
  const SingletonPage({Key? key}) : super(key: key);

  @override
  _SingletonPageState createState() => _SingletonPageState();
}

class _SingletonPageState extends State<SingletonPage> {
  List<String> nomes = [];
  @override
  void initState() {
    getDataFromDatabase();
    super.initState();
  }

  Future<void> getDataFromDatabase() async {
    var db = await Connection.instance.db;
    var result = await db.rawQuery('select * from teste');
    setState(() {
      nomes = result.map<String>((e) => e['nome'] as String).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Singleton'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var db = await Connection.instance.db;
          await db.rawInsert('insert into teste values("ADicionado pelo float")');
          getDataFromDatabase();
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (_, index) => ListTile(
          title: Text(nomes[index]),
        ),
      ),
    );
  }
}
