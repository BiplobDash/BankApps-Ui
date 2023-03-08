
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class MyWallets extends StatelessWidget {

  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
      body:SafeArea(
        child:Container(
          color: Colors.grey,
          child:SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('My Wallets', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),),
                ),
                Divider(),
                carouselSlided("assets/images/img.png",'NGN', 'Q190,000', Colors.purple),
                new DotsIndicator(
                  dotsCount: 1,
                  position: _value,
                ),
                SizedBox(height: 10,),
                cntan(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}








Widget carouselSlided(img, txt, dlr, color) {
  return Container(
    height: 120,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 2,
      itemBuilder: (_, index) {
        return Container(
          height: 100,
          width: 220,
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.only(top: 10, left: 15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Column(
            children: [


              Row(
                children: [
                  Image.asset(img,width: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(txt,style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                    ),),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text('AVAILABLE BALANCE',style: TextStyle(
                    color: Colors.black54,
                    fontSize: 10
                ),),
              ),
              Divider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text(dlr,style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                  Icon(Icons.arrow_forward,color: Colors.green,size: 15,)
                ],
              )
            ],
          ),
        );
      },
    ),
  );
}

Widget cntan(){
  return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
        ),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.lightGreen.shade900,
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)
                    )
                ),
                child:Image.asset('assets/images/img_8.png',width: 40,height: 40,),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.lightGreen.shade900,
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)
                    )
                ),
                child:Image.asset('assets/images/img_9.png',width: 30,height: 30,),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.lightGreen.shade900,
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)
                    )
                ),
                child:Image.asset('assets/images/img_10.png',width: 30,height: 30,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Fund Wallet',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),),
              Text('Send Money',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
              ),),
              Text('Withdraw',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
              ),)
            ],
          ),
          Divider(),
          Container(
            // height: 320,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                )
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 150),
                  child: Text('Recent Transactions', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.lightGreen,
                    child: Image.asset('assets/images/img_11.png',color: Colors.blue,),
                  ),
                  title: Text(
                    'Access Bank ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    '28, Jan 2020',
                    style: TextStyle(
                        color: Colors.black38
                    ),
                  ),
                  trailing: Text(
                    '\$2,400',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    child: Image.asset('assets/images/img_12.png',color: Colors.blue,),
                  ),
                  title: Text(
                    'Alpha Loans ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    '28, Jan 2020',
                    style: TextStyle(
                        color: Colors.black38
                    ),
                  ),
                  trailing: Text(
                    'N10,000',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.lightGreen,
                    child: Image.asset('assets/images/img_11.png',color: Colors.blue,),
                  ),
                  title: Text(
                    'Access Bank ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    '28, Jan 2020',
                    style: TextStyle(
                        color: Colors.black38
                    ),
                  ),
                  trailing: Text(
                    'N4,500,000',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    child: Image.asset('assets/images/img_12.png'),
                  ),
                  title: Text(
                    'Alpha Loans ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    '28, Jan 2020',
                    style: TextStyle(
                        color: Colors.black38
                    ),
                  ),
                  trailing: Text(
                    'N10,000',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.lightGreen,
                    child: Image.asset('assets/images/img_11.png',color: Colors.blue,),
                  ),
                  title: Text(
                    'Access Bank ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    '28, Jan 2020',
                    style: TextStyle(
                        color: Colors.black38
                    ),
                  ),
                  trailing: Text(
                    '\$2,400',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextButton(onPressed: (){},
                    child: Text('View All')),

              ],
            ),
          ),
        ],
      )
  );
}


