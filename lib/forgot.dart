import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'checkMail.dart';

class Forgot extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                            width:40,
                            height: 40,
                            child: FloatingActionButton(onPressed: (){},
                              child: Icon(Icons.arrow_back, size: 20,),
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100, bottom: 10),
                          child: Image.asset(
                            'assets/images/img.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Forgot Password!',
                            style: TextStyle(
                              fontSize: 33,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, bottom: 10),
                          child: Text(
                            'Enter the email address associated with\n your account to recover password.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Email Adress',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black38,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined),
                                hintText: 'email address',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.grey,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: 300,
                            height: 60,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      CupertinoPageRoute(builder: (_)=> CheckMail()));

                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                ),
                                child: Text(
                                  'Recovery Password',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ))),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
