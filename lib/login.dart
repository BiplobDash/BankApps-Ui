import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_3/forgot.dart';
import 'package:project_3/goit.dart';
import 'package:project_3/openacnt.dart';

class Login extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Image.asset(
                      'assets/images/img.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Enter your details to continue',
                      style: TextStyle(
                        fontSize: 20,
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
                  TextFormField(
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
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38,
                    ),
                  ),
                  TextFormField(
                    controller: _passController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: 'password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.grey,
                          ),
                        )),
                    obscureText: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 193),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              CupertinoPageRoute(builder: (_) => Forgot()));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 10,
                          ),
                        )),
                  ),
                  SizedBox(
                      width: 300,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                CupertinoPageRoute(builder: (_) => Goit()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        Text(
                          'Need an Account?',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              OpenAccount();
                            },
                            child: Text(
                              'Try Sutraq',
                              style: TextStyle(color: Colors.greenAccent),
                            ))
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Image.asset(
                      'assets/images/img_1.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text(
                      'Tap to use fingerprint',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
