
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_3/goit.dart';

class CheckMail extends StatelessWidget {
  const CheckMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 140, left: 20, right: 20),
          child:
              Container(

                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset('assets/images/img_2.png',
                      width: 100,
                      height: 100,),
                    ),
                    Divider(),
                    Text("Checked Inbox",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 30),
                      child: Text('An email has been sent to you.',
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55, right: 40),
                      child: Text('Click the link to reset your',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, right: 40),
                      child: Text('Password.',
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),),
                    ),
                    Divider(),

                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushReplacement(context,
                            CupertinoPageRoute(builder: (_)=> Goit()));

                      },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text("CHECK MAIL",
                      style: TextStyle(
                        color: Colors.white
                      ),)),
                    )
                  ],
                ),
              ),

          ),
        ),
    );
  }
}
