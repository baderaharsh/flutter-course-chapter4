import 'package:flutter/material.dart';
import './widgets/userTransactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  // String inputTitle;
  // String inputAmount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 4 - App 1'),
      ),
      body: SingleChildScrollView(
              child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text(
                  'CHART!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                elevation: 5,
                color: Colors.blue[200],
              ),
            ),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
