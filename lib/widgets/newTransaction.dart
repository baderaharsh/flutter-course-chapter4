import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function newTxHandler;
  NewTransaction(this.newTxHandler);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitHandler() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    } else {
      widget.newTxHandler(
        enteredTitle,
        enteredAmount,
      );

      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              // onChanged: (val) => inputTitle = val,
              controller: titleController,
              onSubmitted: (_) => submitHandler(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              // onChanged: (val) => inputAmount = val,
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitHandler(),
            ),
            FlatButton(
              onPressed: submitHandler,
              child: Text(
                'Add Transaction',
              ),
              textColor: Theme.of(context).primaryColor,
              // color: Colors.purple[50],
            )
          ],
        ),
      ),
    );
  }
}
