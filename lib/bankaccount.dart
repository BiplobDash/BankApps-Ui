
import 'package:flutter/material.dart';

class NewBankAccount extends StatefulWidget {


  @override
  State<NewBankAccount> createState() => _NewBankAccountState();
}

class _NewBankAccountState extends State<NewBankAccount> {
  List <String>_currency = ['Select Bank', 'N', 'S'];

  String _value = 'Select Bank';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 50),
                  child: Text(
                    'Add New Bank \n     Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    '  Ensure to fill in the neccessary\ndetails of the recipient in order to\n                   continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Bank',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black38),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
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
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Account Number',style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
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
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Registered Phone Number',style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
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
                ),
                Divider(),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 320,
                    height: 65,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green
                        ),
                        child: Text('CONFIRM',style:
                        TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
