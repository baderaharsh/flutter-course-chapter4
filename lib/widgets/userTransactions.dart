import 'package:flutter/material.dart';
import './transactionList.dart';
import './newTransaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
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

  void _addTransaction(String title, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() => _userTransactions.add(newTx));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
