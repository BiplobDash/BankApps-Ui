
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'createpin.dart';

class AddNewBankCard extends StatelessWidget {
  const AddNewBankCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
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
                              Text('Add New Bank Card', style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),),
                              Divider(),
                              Text(
                                '  Ensure to fill in the neccessary\ndetails of the recipient in order to\n                   continue',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black38,
                                ),
                              ),
                              SizedBox(height: 20,),
                               Container(
                                  height: 160,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF0041C4),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/img_7.png')
                                      ),
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15, left: 25),
                                        child: Text('VISA', style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 25,
                                        ),),
                                      ),
                                      Divider(),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 25),
                                        child: Text('Card Number', style: TextStyle(
                                          color: Colors.white38,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 25),
                                        child: Text('**** **** **** *379', style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),),
                                      ),
                                      Divider(),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 25),
                                            child: Text('CARD HOLDER NAME', style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 90),
                                            child: Text('EXPIRE DATE', style: TextStyle(
                                              color: Colors.white38,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 25),
                                            child: Text('Precious Ogar', style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 105),
                                            child: Text('02/25', style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50,),
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Card Number',style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17
                                  ),),
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Expiry Date',style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17
                                      ),),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 100),
                                        child: Text('CVV',style: TextStyle(
                                            color: Colors.black38,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 17
                                        ),),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    SizedBox(
                                      width: 130,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'MM/Y',
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
                                    SizedBox(
                                      width: 130,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'CVV',
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
                                  ],),
                                  SizedBox(height: 30,),
                                  SizedBox(
                                    width: 320,
                                    height: 65,
                                    child: ElevatedButton(onPressed: (){
                                      Navigator.pushReplacement(context,
                                          CupertinoPageRoute(builder: (_)=> CreatePin()));
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
                          )),
                      ],
                    ),
              ),
            ),
    );
  }
}
