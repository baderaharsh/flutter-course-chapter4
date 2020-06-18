import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final Function newTxHandler;
  NewTransaction(this.newTxHandler);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitHandler(){

      final enteredTitle = titleController.text;
      final enteredAmount = double.parse(amountController.text);

      if (enteredTitle.isEmpty||enteredAmount<=0){
        return;
      }else{
        newTxHandler(enteredTitle, enteredAmount);
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
                    textColor: Colors.purple,
                    // color: Colors.purple[50],
                  )
                ],
              ),
            ),
          );
  }
}