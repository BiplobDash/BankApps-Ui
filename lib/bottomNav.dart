
import 'package:flutter/material.dart';
import 'package:project_3/Cards.dart';
import 'package:project_3/accountsetting.dart';
import 'package:project_3/dashboard.dart';
import 'package:project_3/mywallets.dart';
import 'package:project_3/newBank.dart';
import 'package:project_3/newBankCard.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {

  int _currentIndex = 0;

  final _pages = [
    Deshboard(),
    MyWallets(),
    MyCards(),
    AccountSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        elevation: 5,
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.home_outlined,
          ),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.wallet,
          ),
            label: "Wallets",
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.credit_card_sharp,
          ),
            label: "Cards",
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.settings,
          ),
            label: "Settings",
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
