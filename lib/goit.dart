
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_3/bottomNav.dart';

class Goit extends StatelessWidget {
  const Goit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            image: DecorationImage(
              image: AssetImage('assets/images/img_3.png')
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 200,),
              SizedBox(
                width: 320,
                height: 65,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_)=> BottomNavController()));
                },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green
                    ),
                    child: Text('GO IT!',style:
                    TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),)),
              ),
            ],
          )
        ),
      ),
    );
  }
}
