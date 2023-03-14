

import 'package:flutter/material.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _switch = false;
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Account Settings', style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      child: Text('OP', style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                    title: Text('Ogar Precious',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                    ),),
                    subtitle: Text('ogarpre@gmail.com', style: TextStyle(
                      color: Colors.white70,
                      fontSize: 10

                    ),),
                    trailing: IconButton(onPressed: (){},
                        icon: Icon(Icons.arrow_forward_ios, color: Colors.white,size: 20,)),
                  ),
                  Divider(),

                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('GENERAL', style: TextStyle(
                              color: Colors.black38,
                              fontSize: 15
                            ),),
                          ),
                          ListTile(
                            title: Text('Bank Accounts', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 18
                            ),),
                            trailing: IconButton(onPressed: (){
                              
                            },
                                icon: Icon(Icons.arrow_forward_ios, color: Colors.black87,size: 20,)),

                          ),
                          ListTile(
                            title: Text('My Cards', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                            trailing: IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_forward_ios, color: Colors.black87,size: 20,)),

                          ),
                          ListTile(
                            title: Text('Change Transaction Pin', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                            trailing: IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_forward_ios, color: Colors.black87,size: 20,)),

                          ),
                          ListTile(
                            title: Text('Security', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                            trailing: IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_forward_ios, color: Colors.black87,size: 20,)),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text('Preferences', style: TextStyle(
                                color: Colors.black38,
                                fontSize: 17
                            ),),
                          ),
                          ListTile(
                            title: Text('Invite Your Friends', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                            trailing: IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_forward_ios, color: Colors.black87,size: 20,)),

                          ),
                          ListTile(
                            title: Text('Report a Bug', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                            trailing: IconButton(onPressed: (){},
                                icon: Icon(Icons.arrow_forward_ios, color: Colors.black87,size: 20,)),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text('Notifications', style: TextStyle(
                                color: Colors.black38,
                                fontSize: 17
                            ),),
                          ),
                          ListTile(
                            title: Text('Get real-time updates', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18
                            ),),
                            trailing: Switch(value: _switch,
                                onChanged: (value){
                              _switch = value;

                                }),

                          ),


                        ],
                      ),
                    ),

                ],
            ),
          ),
        ),
      ),
    );
  }
}
