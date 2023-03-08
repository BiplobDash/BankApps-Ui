

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bankaccount.dart';
import 'newBank.dart';

class Funds2 extends StatelessWidget {
  const Funds2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Text(
                        'Deposit Funds',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Select your preferred payment method',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: 100,
                        color: Colors.white,
                        child: ListTile(
                          leading: Image.asset('assets/images/img_5.png'),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Bank Transfer',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600
                              ),),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('Send money from your sutraq accounts to any bank account in the world',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w600
                              ),),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: IconButton(onPressed: (){
                              Navigator.pushReplacement(context,
                                  CupertinoPageRoute(builder: (_)=> AddNewBankAccount()));
                            },
                                icon: Icon(Icons.arrow_forward_ios,size: 20,)),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: 100,
                        color: Colors.white,
                        child: ListTile(
                          leading: Image.asset('assets/images/img_6.png'),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text('Sutraq User',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600
                              ),),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('Send money from your sutraq accounts to other sutraq users',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w600
                              ),),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Icon(Icons.arrow_forward_ios,size: 20,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )

            ],
          )
      ),
    );
  }
}
