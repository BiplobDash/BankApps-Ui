
import 'package:flutter/material.dart';

class CreatePin extends StatelessWidget {
  const CreatePin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [

                  Image.asset('assets/images/img_4.png',width: 50,height: 50,),
                  SizedBox(height: 10,),
                  Text('Create a transaction Pin',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),),
                  SizedBox(height: 10,),
                  Text('This pin is your personal secured pin, used to',style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),),
                  Text('authorize transactions with sutraq',style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),),
                  SizedBox(height: 35,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '*',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.grey,
                                    )
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: '*',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.grey,
                                    )
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: '*',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.grey,
                                    )
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: '*',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.grey,
                                    )
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 250,),
                  SizedBox(
                    width: 280,
                    height: 65,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.green),
                        child: Text(
                          'CONFIRM',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
