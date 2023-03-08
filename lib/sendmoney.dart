
import 'package:flutter/material.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Text(
                'Send Money!',
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
                'Choose an option to begin the transfer',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black38,
                ),
              ),
            ),
            SizedBox(height: 30,),
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
                    child: Icon(Icons.arrow_forward_ios,size: 20,),
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
        )
      ),
    );
  }
}
