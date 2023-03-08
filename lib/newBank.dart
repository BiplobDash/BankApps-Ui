

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newBankCard.dart';

class AddNewBankAccount extends StatefulWidget {


  @override
  State<AddNewBankAccount> createState() => _AddNewBankAccounState();
}

class _AddNewBankAccounState extends State<AddNewBankAccount> {
  List <String>_currency = ['Select Bank', 'N', 'S'];
  List <String>_country = ['Select Country', 'N', 'S'];

  String _value = 'Select Bank';
  String _value2= 'Select Country';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: SizedBox(
                  width:40,
                  height: 40,
                  child: FloatingActionButton(onPressed: (){},
                    child: Icon(Icons.arrow_back, size: 20,),
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Add New Bank Account',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                    Divider(),
                    Text(
                      '  Ensure to fill in the neccessary\ndetails of the recipient in order to\n                   continue',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 240),
                      child: Text(
                        'Country',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black38),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(width: 2, color: Colors.grey)
                              )
                          ),
                          value: _value2,
                          items: _country.map((String value){
                            return DropdownMenuItem(
                                value: value,
                                child: Text(value));
                          }).toList(), onChanged: (value){
                        setState(() {
                          _value = value!;
                        });
                      }),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(right: 270),
                      child: Text(
                        'Bank',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black38),
                      ),
                    ),
                    SizedBox(
                      width: 320,
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
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
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(right: 160),
                      child: Text('Account Number',style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),),
                    ),
                    SizedBox(
                      width: 320,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Your Account Number',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey,
                              ),
                            )),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Text('Registered Phone Number',style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),),
                    ),
                    SizedBox(
                      width: 320,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Your phone number',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.grey,
                              ),
                            )),
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: 320,
                      height: 65,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushReplacement(context,
                            CupertinoPageRoute(builder: (_)=> AddNewBankCard()));
                      },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green
                          ),
                          child: Text('CONFIRM',style:
                          TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),)),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
