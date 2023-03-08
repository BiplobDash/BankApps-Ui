import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'depositfunds.dart';

class GoodJob extends StatelessWidget {
  const GoodJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: SizedBox(
              width:40,
              height: 40,
              child: FloatingActionButton(onPressed: (){},
                child: Icon(Icons.close, size: 20,),
                backgroundColor: Colors.green,
              ),
            ),
          ),
          SizedBox(height: 200,),
          Center(
            child: Column(
              children: [
                Text(
                  'Good Job!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Let’s try funding this account',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 320,
                  height: 65,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            CupertinoPageRoute(builder: (_)=> DepositFunds()));
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
    );
  }
}
