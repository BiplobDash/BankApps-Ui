
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_3/funds2.dart';

class DepositFunds extends StatelessWidget {
  const DepositFunds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Text('Deposit Funds',style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Enter amount to deposit',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(height: 100,),
                    Padding(
                      padding: const EdgeInsets.only(right: 210),
                      child: Text('Amount',style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),),
                    ),
                    Divider(),
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter Amount',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text('N',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20
                                ),),
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
                    SizedBox(height: 100,),
                    SizedBox(
                      width: 280,
                      height: 65,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                CupertinoPageRoute(builder: (_)=> Funds2()));
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.green),
                          child: Text(
                            'CONFIRM',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
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
