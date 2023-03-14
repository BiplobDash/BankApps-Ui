import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'newBankCard.dart';


class MyCards extends StatelessWidget {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AddNewBankCard();
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Divider(),
          Text(
            'My Cards',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          Container(
            height: 150,
            child: carouselSlided(),
          ),
          new DotsIndicator(
            dotsCount: 2,
            position: _value,
          ),
          Expanded(child: cntan()),
        ],
      )),
    );
  }
}

Widget carouselSlided() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 2,
    itemBuilder: (_, index) {
      return Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.only(top: 8, left: 8),
        decoration: BoxDecoration(
            color: Color(0xFF0041C4),
            image:
                DecorationImage(image: AssetImage('assets/images/img_7.png')),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,),
              child: Text(
                'VISA',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Card Number',
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                '**** **** **** *379',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'CARD HOLDER NAME',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'EXPIRE DATE',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Precious Ogar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 105),
                  child: Text(
                    '02/25',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

Widget cntan() {
  return Container(
      // height: 400,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            //  height: 320,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 150),
                  child: Text(
                    'Recent Transactions',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.lightGreen,
                    child: Image.asset(
                      'assets/images/img_11.png',
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    'Access Bank ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    '28, Jan 2020',
                    style: TextStyle(color: Colors.black38),
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
                    child: Image.asset(
                      'assets/images/img_12.png',
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    'Alpha Loans ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    '28, Jan 2020',
                    style: TextStyle(color: Colors.black38),
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
                    child: Image.asset(
                      'assets/images/img_11.png',
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    'Access Bank ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    '28, Jan 2020',
                    style: TextStyle(color: Colors.black38),
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
                    style: TextStyle(color: Colors.black38),
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
                    child: Image.asset(
                      'assets/images/img_11.png',
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    'Access Bank ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    '28, Jan 2020',
                    style: TextStyle(color: Colors.black38),
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
                TextButton(onPressed: () {}, child: Text('View All')),
              ],
            ),
          )
        ]),
      ));
}
