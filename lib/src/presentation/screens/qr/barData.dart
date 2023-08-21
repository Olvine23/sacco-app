import 'package:state/src/presentation/screens/qr/individual_bar.dart';

class BarData{
  final double sunAmnt;
  final double monAmnt;
  final double tueAmnt;
  final double wedAmnt;
  final double thuAmnt;
  final double friAmnt;
  final double satAmnt;

  BarData({required this.sunAmnt, required this.monAmnt,required , required this.tueAmnt, required this.wedAmnt, required this.thuAmnt, required this.friAmnt, required this.satAmnt});

  List<IndividualBar> barData = [];
  void initializeBarData(){
    barData = [

      IndividualBar(x:0, y:sunAmnt),
      IndividualBar(x:1, y:monAmnt),
      IndividualBar(x:2, y:tueAmnt),
      IndividualBar(x:3, y:wedAmnt),
      IndividualBar(x:4, y:thuAmnt),
      IndividualBar(x:5, y:friAmnt),
      IndividualBar(x:6, y:satAmnt),


    ];

  
  }
  
}