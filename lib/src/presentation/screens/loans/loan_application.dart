import 'package:flutter/material.dart';

class LoanApplication extends StatefulWidget {
  const LoanApplication({super.key});

  @override
  State<LoanApplication> createState() => _LoanApplicationState();
}

class _LoanApplicationState extends State<LoanApplication> {
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
    return  Scaffold(
      appBar: AppBar(
        title: Text("Loan Application"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:12.0, left: 12, right: 12,),
            child: Column(children: [
              GestureDetector(
                onTap: (){
                  showAlertOtherDialog(context);
                },
                child: Card(child: ListTile(title: Text("NORMAL LOAN")))),
                 GestureDetector(
                onTap: (){
                  showAlertOtherDialog(context);
                },
                child: Card(child: ListTile(title: Text("FLASH ADVANCE")))),
                 GestureDetector(
                onTap: (){
                  showAlertOtherDialog(context);
                },
                child: Card(child: ListTile(title: Text("DIVIDENCE ADVANCE"))))
            ]),
          ),
        ),
      ),
    );
  }
}