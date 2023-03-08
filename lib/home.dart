import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_3/openacnt.dart';
import 'login.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List items = [
    {
      'images': 'assets/images/img3.png',
      'title': 'Send Money Anywhere',
      'description':
          'With our unique technology, you can get money anywhere in the world.',
    },
    {
      'images': 'assets/images/img2.png',
      'title': 'Safe & Secured',
      'description':
          'Safety of your funds is guaranteed. We’ve got you covered 24/7.',
    },
    {
      'images': 'assets/images/img1.png',
      'title': 'Unbeatable Support',
      'description':
          'Send money to other sutraq users free of charge, with no additional fee.',
    }
  ];

  int _counter = 0;
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(child: Image.asset(items[_counter]['images'], width: 200,),),
            SizedBox(height: 50,),
            new DotsIndicator(
              dotsCount: 4,
              position: _value,
            ),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                topLeft: Radius.circular(20))
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(items[_counter]['title'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: Text(items[_counter]['description'], style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white70
                    ),),
                  ),
                  SizedBox(height: 100,),

                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                      if(_counter < 2){
                        setState(() {
                          _counter += 1;
                        });
                      }
                      else{
                        Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_)=> Login()));
                      }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen.shade900
                        ),
                        child: Text('Login', style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                        ),)),
                  ),
                  Divider(),
                  TextButton(onPressed: (){
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (_)=> OpenAccount()));
                  },
                      child: Text('Try Sutraq', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),))

                ],
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
