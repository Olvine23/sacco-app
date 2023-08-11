import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:state/models/image.dart';
import 'package:state/src/presentation/screens/loans/eloan.dart';
import 'package:state/src/presentation/screens/loans/guarantors.dart';
import 'package:state/src/presentation/screens/loans/loan__balances.dart';
import 'package:state/src/presentation/screens/loans/loan_application.dart';
import 'package:state/src/presentation/screens/loans/loan_calculator.dart';
import 'package:state/src/presentation/screens/loans/loan_guaranteed.dart';
import 'package:state/src/presentation/screens/loans/loan_repayment.dart';

class LoansScreen extends StatefulWidget {
   LoansScreen ({super.key});

  @override
  State<LoansScreen> createState() => _LoansScreenState();
}

class _LoansScreenState extends State<LoansScreen> {
   bool _isLoading = true;
   @override
   void initState() {
     super.initState();
     _getData();
   }
   final List<Map<String, dynamic>> gridItems = [
    {'icon': Icons.account_balance_wallet, 'name': 'Loan Balances'},
    {'icon': Icons.local_atm, 'name': 'Request Loan'},
    {'icon': Icons.receipt_long, 'name': 'Loan Repayment'},
    {'icon':Icons.install_mobile, 'name': 'E-loan'},
     {'icon':Icons.check_box, 'name':'Loan Guaranteed'},
     {'icon':Icons.calculate, 'name':'Loan Calculator'},
      {'icon':Icons.people, 'name':'Guarantors'},
    // Add more items here if needed
  ];

ImageModel? dataFromAPI;

  _getData() async {
    try {
      String url = "https://pixabay.com/api/?key=24492969-ba7c05868d9509686fb182a52&q=cake&image_type=photo&pretty=true&per_page=100";
      http.Response res = await http.get(Uri.parse(url));
      if (res.statusCode == 200) {
        dataFromAPI = ImageModel.fromJson(json.decode(res.body));
        _isLoading = false;
        print(dataFromAPI!.hits[0].webformatUrl);
        setState(() {});
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    //  body: _isLoading ? CircularProgressIndicator() : ListView.builder(
    //   itemCount: dataFromAPI!.hits.length,
    //   itemBuilder: (context, index){

    //   return  Image.network(dataFromAPI!.hits[index].webformatUrl);

    //  }),
       body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: gridItems.length,
          itemBuilder: (BuildContext context, int index) {

            if(gridItems[index]['name'] == 'Loan Balances'){
               return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LoanBalancesScreen();
                  })));
                },
                 child: GridItem(
                             icon: gridItems[index]['icon'],
                             name: gridItems[index]['name'],
                           ),
               );
            } else  if(gridItems[index]['name'] == 'Request Loan'){
               return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LoanApplication();
                  })));
                },
                 child: GridItem(
                             icon: gridItems[index]['icon'],
                             name: gridItems[index]['name'],
                           ),
               );
            }
            else  if(gridItems[index]['name'] == 'Loan Repayment'){
               return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LoanRepayment();
                  })));
                },
                 child: GridItem(
                             icon: gridItems[index]['icon'],
                             name: gridItems[index]['name'],
                           ),
               );
            }
            else  if(gridItems[index]['name'] == 'E-loan'){
               return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return EloanScreen();
                  })));
                },
                 child: GridItem(
                             icon: gridItems[index]['icon'],
                             name: gridItems[index]['name'],
                           ),
               );
            }
            else  if(gridItems[index]['name'] == 'Loan Guaranteed'){
               return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LoanGuaranteed();
                  })));
                },
                 child: GridItem(
                             icon: gridItems[index]['icon'],
                             name: gridItems[index]['name'],
                           ),
               );
            }
             else  if(gridItems[index]['name'] == 'Loan Calculator'){
               return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LoanCalculator();
                  })));
                },
                 child: GridItem(
                             icon: gridItems[index]['icon'],
                             name: gridItems[index]['name'],
                           ),
               );
            }
             else  if(gridItems[index]['name'] == 'Guarantors'){
               return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return Guarantors();
                  })));
                },
                 child: GridItem(
                             icon: gridItems[index]['icon'],
                             name: gridItems[index]['name'],
                           ),
               );
            }
            // return GridItem(
            //   icon: gridItems[index]['icon'],
            //   name: gridItems[index]['name'],
            // );
          },
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final dynamic onTap;

  GridItem({required this.icon, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30.0,
            color: Color(0xff17b978),
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}