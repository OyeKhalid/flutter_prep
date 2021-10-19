import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flavorsexample/resource/display_strings.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flavors Example"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  counter--;
                });
              }),
          FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  counter++;
                });
              }),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(APP_TITLE),
            Text(DATE + getDateForDisplay()),
            Text(APP_DESCRIPTION),
            Image.asset(
              'assets/dancing.jpg',
              width: 200.0,
              height: 300.0,
            ),
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Image.asset('assets/1.png', width: 200.0, height: 300.0),
          ],
        ),
      ),
    );
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }
}
