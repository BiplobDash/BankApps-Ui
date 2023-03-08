import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_3/goodjob.dart';

class AddAccount extends StatefulWidget {
  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  List <String>_currency = ['Choose Currency', 'N', 'S'];

  String _value = 'Choose Currency';

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
                  padding: const EdgeInsets.only(left: 100, top: 50),
                  child: Text(
                    'Add New Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50,right: 30),
                  child: Text(
                    'Ensure to fill in the neccessary details\n of the recipient in order to continue',
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
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Currency',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black38),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(20),
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
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    width: 320,
                    height: 65,
                    child: ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context,
                          CupertinoPageRoute(builder: (_)=> GoodJob()));
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
                ),
              ],
            ),
          ),
        ),
    );
  }
}
