// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:state/network/recipe_service.dart';
import 'package:state/src/presentation/balences.dart';
import 'package:state/src/presentation/member_details.dart';
import 'package:state/src/presentation/screens/loans/loan_screen.dart';
import 'package:state/src/presentation/screens/transaction_screen.dart';
import 'package:state/src/presentation/statistics_screen.dart';
import 'package:state/src/presentation/statement_screen.dart';

import '../welcome_screen.dart';
import 'custom_home.dart';
import 'profile.dart';

class NavigationScreen extends StatefulWidget {
 NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  void initState() {
    super.initState();
    RecipeService().getRecipes("burger", 0, 50);
    
  }
 int selectedIndex = 0;

 final  buildBody = [CustomHome(), TransactionScreen(), LoansScreen(),ProfilePage()];
  void onTap(int index){

    setState(() {
      selectedIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     bottomNavigationBar: BottomNavigationBar(
    unselectedItemColor: Colors.black54,
    unselectedLabelStyle: TextStyle(color: Colors.black54),
      onTap: onTap,
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black,
      items: [
      BottomNavigationBarItem(
        label: "Home",
        icon: Icon(Icons.home)),
      BottomNavigationBarItem(
        label: "Transact",
        icon: (Icon(Icons.receipt_long_rounded))),
       BottomNavigationBarItem(
        label: "Loans",
        icon: (Icon(Icons.paid_rounded))
        
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'My Profile')
     ]),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff83e85a),
      //   automaticallyImplyLeading: false,
      //    leading: Icon(Icons.menu),
      //    actions: [
      //     Icon(Icons.logout_outlined),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      //       child: Icon(Icons.notifications),
      //     )
      //     ],
      // ),
      body: buildBody[selectedIndex]
    );
  }
}