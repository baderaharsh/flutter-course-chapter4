import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final Function newTxHandler;
  NewTransaction(this.newTxHandler);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Amount',
                    ),
                    // onChanged: (val) => inputAmount = val,
                    controller: amountController,
                  ),
                  FlatButton(
                    onPressed:() => newTxHandler(titleController.text, double.parse(amountController.text)),
                    child: Text(
                      'Add Transaction',
                    ),
                    textColor: Colors.purple,
                    // color: Colors.purple[50],
                  )
                ],
              ),
            ),
          );
  }
}