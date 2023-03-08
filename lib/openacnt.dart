

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newaccount.dart';

class OpenAccount extends StatelessWidget {
  const OpenAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(
                    image: AssetImage('assets/images/img_3.png')
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Divider(),
                Column(
                  children: [
                    Text('Welcome to Sutraq!', style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 25

                    ),),
                    Text('Let’s start by opening a new sutraq account', style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w600,
                        fontSize: 15

                    ),),
                  ],
                ),
                SizedBox(
                  width: 320,
                  height: 65,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (_)=> AddAccount()));
                  },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green
                      ),
                      child: Text('OPEN ACCOUNT!',style:
                      TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),)),
                ),
              ],
            )
        ),
      ),
    );
  }
}
