import 'package:flutter/material.dart';

class EloanScreen extends StatelessWidget {
  const EloanScreen({super.key});
  showAlertOtherDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("BACK"),
    onPressed: () {
      Navigator.pop(context);
     },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Enter Months (1,2,3 months)"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         TextFormField(
          decoration: InputDecoration(
            hintText: "duration in months"
          ),
        ),
      
        SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
             backgroundColor: Color(0xff83e85a),
            minimumSize: const Size.fromHeight(50),
          ),

          onPressed: (){}, child: Text("CHECK LIMIT"))
      ],
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E Loan"),),
      body:  GestureDetector(
                onTap: (){
                  showAlertOtherDialog(context);
                },
                child: Card(child: ListTile(title: Text("NORMAL LOAN")))),
    );
  }
}