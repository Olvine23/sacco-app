import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 200,
        child: Card(
          
          child: ListTile(
            leading: Icon(Icons.money),
            title: Text("Deposit"),
            subtitle: Text("Deposit via m-PESA"),
      
          )
        ),
      ),
    );
  }
}