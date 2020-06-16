import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: 'T1',
      title: 'Shoes',
      amount: 3699,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Groceries',
      amount: 357,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 4 - App 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Text(tx.title),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
