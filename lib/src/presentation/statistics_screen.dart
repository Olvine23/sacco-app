import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statistics"),
      ),
      body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text(
                      'Share Capital',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text("Ksh. 100084", style: TextStyle(fontSize: 16),),
                      SizedBox(height: 20,),
                      Text(
                      'Deposit Contribution',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text("Ksh. 577049", style: TextStyle(fontSize: 16),),
                      SizedBox(height: 20,),
                      Text(
                      'Insurance Contribution',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text("Ksh. 103787", style: TextStyle(fontSize: 16),)
        ],
      ),
    )
    );
  }
}