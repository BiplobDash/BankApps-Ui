
import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  List <String>_currency = ['Naira Account: N190,000', 'N', 'S'];

  String _value = 'Naira Account: N190,000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Transaction Histoy', style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600
                ),),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.grey)
                        )
                    ),
                    value: _value,
                    items: _currency.map((String value){
                      return DropdownMenuItem(
                          value: value,
                          child: Text(value));
                    }).toList(), onChanged: (value){
                  setState(() {
                    _value = value!;
                  });
                }),
              ),

              SizedBox(height: 50,),
              
            ],
          ),
        ),
      ),
    );
  }
}
