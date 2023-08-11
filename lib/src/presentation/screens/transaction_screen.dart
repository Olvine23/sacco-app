// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:state/src/presentation/screens/transactions_screen/deposit.dart';
import 'package:state/src/presentation/screens/transactions_screen/transfer.dart';
import 'package:state/src/presentation/screens/transactions_screen/withdraw.dart';

import 'package:state/src/presentation/widgets/transaction_card.dart';

import 'transactions_screen/transferBosa.dart';
import 'transactions_screen/transferFosa.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Transact"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            TransacCard(
              leadingText: 'Deposit',
              subTitleText: 'Deposit via M-PESA',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DepositScreen();
                }));
              },
              icon: Icons.money,
            ),
            TransacCard(
              leadingText: 'Withdraw',
              subTitleText: 'Withdraw Cash',
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return WithdrawScreen();
                }));
              },
              icon: Icons.phone_android,
            ),
            TransacCard(
              leadingText: 'Transfer',
              subTitleText: 'Between my accounts',
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TransferScreen();
                }));
              },
              icon: Icons.send,
            ),
            TransacCard(
              leadingText: 'Transfer',
              subTitleText: 'Other FOSA account',
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TransferFosaScreen();
                }));
              },
              icon: Icons.send,
            ),
            TransacCard(
              leadingText: 'Transfer',
              subTitleText: 'To BOSA account',
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TransferBosaScreen();
                }));
              },
              icon: Icons.send,
            ),
          ],
        ),
      ),
    );
  }
}

class TransacCard extends StatelessWidget {
  final String leadingText;
  IconData icon;
  final dynamic onTap;
  final String subTitleText;
  TransacCard({
    Key? key,
    required this.leadingText,
    required this.icon,
    required this.onTap,
    required this.subTitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
          child: ListTile(
        leading: Icon(icon),
        title: Text(
          leadingText,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subTitleText),
      )),
    );
  }
}
