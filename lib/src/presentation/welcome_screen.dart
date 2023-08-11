// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:state/network/recipe_service.dart';
import 'package:state/src/presentation/balences.dart';
import 'package:state/src/presentation/member_details.dart';
import 'package:state/src/presentation/screens/loans/loan__balances.dart';
import 'package:state/src/presentation/screens/loans/loan_screen.dart';
import 'package:state/src/presentation/screens/transaction_screen.dart';
import 'package:state/src/presentation/statistics_screen.dart';
import 'package:state/src/presentation/statement_screen.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final List<Map<String, dynamic>> gridItems = [
    {'icon': Icons.person_outline, 'name': 'Profile'},
    {'icon': Icons.account_balance_wallet, 'name': 'Balances'},
    {'icon': Icons.reorder, 'name': 'Statement'},
    {'icon': Icons.bar_chart, 'name': 'Statistics'},
    // Add more items here if needed
  ];
  @override
  void initState() {
    super.initState();
    RecipeService().getRecipes("burger", 0, 50);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome User",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                      foregroundColor: Colors.black,
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png')),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(children: [
                CarouselSlider(
                  options: CarouselOptions(
                      autoPlay: true, viewportFraction: 1.0, height: 200.0),
                  items: [
                    Container(
                      color: Color(0xff086972),
                      child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "LOANS",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Text(
                                  "Access to up to 5 times of your deposit with flexible payment period.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      color: Color(0xfffa7ff83),
                      child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "DIVIDENCE ADVANCE",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Text(
                                    "Get 50% of your dividence earned this year"),
                              )
                            ],
                          )),
                    ),
                    Container(
                      color: Colors.amber,
                      child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "WITHDRAW",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Text("Transfer funds seamlessly."),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 8.0,
                            crossAxisCount: 2),
                        itemCount: gridItems.length,
                        itemBuilder: (context, index) {
                          if (gridItems[index]['name'] == 'Profile') {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return LoanBalancesScreen();
                                })));
                              },
                              child: GridItem(
                                  icon: gridItems[index]['icon'],
                                  name: gridItems[index]['name']),
                            );
                          }
                           else if (gridItems[index]['name'] == 'Balances') {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return BalancesScreen();
                                })));
                              },
                              child: GridItem(
                                  icon: gridItems[index]['icon'],
                                  name: gridItems[index]['name']),
                            );
                          }
                         else  if (gridItems[index]['name'] == 'Statement') {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return StatementScreen();
                                })));
                              },
                              child: GridItem(
                                  icon: gridItems[index]['icon'],
                                  name: gridItems[index]['name']),
                            );
                          }
                           else if (gridItems[index]['name'] == 'Statistics') {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return StatisticsScreen();
                                })));
                              },
                              child: GridItem(
                                  icon: gridItems[index]['icon'],
                                  name: gridItems[index]['name']),
                            );
                          }

                        }))
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 30.0),
                //   child: Row(

                //     children: [
                //     GestureDetector(
                //       onTap: (){
                //         print("tapped");
                //         Navigator.push(context, MaterialPageRoute(builder: (context){
                //           return MemberDetailsScreen();
                //         }));
                //       },
                //       child: SizedBox(
                //         height: 110,
                //         width: 110,
                //         child: Card(
                //         color: Color(0xff086972),
                //           child: Align(
                //           alignment: Alignment.center,
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Icon(Icons.person_outlined, size: 30,color:
                //               Colors.white,),
                //               Text("Profile", style: TextStyle(color: Colors.white, fontSize: 18),),
                //             ],
                //           )),)),
                //     ),
                //    SizedBox(width: 40,),
                //     GestureDetector(
                //       onTap: (){
                //         Navigator.push(context, MaterialPageRoute(builder: (context){

                //           return BalancesScreen();
                //         }));
                //       },
                //       child: SizedBox(
                //         height: 110,
                //         width: 110,
                //         child: Card(
                //           color: Color(0xff086972),
                //           child: Align(
                //           alignment: Alignment.center,
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Icon(Icons.account_balance_outlined, size: 30,color: Colors.white,),
                //               Text("Balances", style: TextStyle(fontSize: 18, color: Colors.white),),
                //             ],
                //           )),)),
                //     ),
                //   ],),
                // ),
                //  Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 30.0),
                //   child: Row(

                //     children: [
                //     GestureDetector(
                //       onTap: (){
                //         Navigator.push(context, MaterialPageRoute(builder: (context){
                //           return StatementScreen();
                //         }));
                //       },
                //       child: SizedBox(
                //         height: 110,
                //         width: 110,
                //         child: Card(
                //           color: Color(0xff086972),
                //           child: Align(
                //           alignment: Alignment.center,
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Icon(Icons.reorder, size: 30,color: Colors.white,),
                //               Text("Statement", style: TextStyle(color: Colors.white, fontSize: 18),),
                //             ],
                //           )),)),
                //     ),
                //    SizedBox(width: 40,),
                //     GestureDetector(
                //       onTap: (){
                //         Navigator.push(context, MaterialPageRoute(builder: (context){
                //            return StatisticsScreen();
                //         }));
                //       },
                //       child: SizedBox(
                //         height: 110,
                //         width: 110,
                //         child: Card(
                //         color: Color(0xff086972),
                //           child: Align(
                //           alignment: Alignment.center,
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Icon(Icons.bar_chart, size: 30,color: Colors.white,),
                //               Text("Statistics", style: TextStyle(fontSize: 18, color: Colors.white),),
                //             ],
                //           )),)),
                //     ),
                //   ],),
                // ),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
