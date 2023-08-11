
import 'package:flutter/material.dart';

class DepositScreen extends StatefulWidget {
   DepositScreen({super.key});

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
   String dropdownvalue = 'Account 1';  
   String dropdownLoansvalue = 'Loan 1'; 
   String dropdownCapitalValue = 'Shares Capital' ;

  // List of items in our dropdown menu
  var items = [    
    'Account 1',
    'Account 2',
    'Extra Account',
     
  ];
  var loanItems = [    
    'Loan 1',
    'Account 2',
    'Extra Account',
     
  ];
  var capitalItems = [
    'Shares Capital',
    'Deposit Contribution'

  ];
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
    title: Text("Enter a/c no"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         TextFormField(
          decoration: InputDecoration(
            hintText: "Account number"
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Amount"
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
             backgroundColor: Color(0xff83e85a),
            minimumSize: const Size.fromHeight(50),
          ),

          onPressed: (){}, child: Text("PAY"))
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

showAlertLoansDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("BACK"),
    onPressed: () {
      Navigator.pop(context);
     },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Select Loan"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          DropdownButtonFormField(
            
                
              // Initial Value
              value: dropdownLoansvalue,
                
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),    
                
              // Array list of items
              items: loanItems.map((String items) {
                return DropdownMenuItem(
                  
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Amount"
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
             backgroundColor: Color(0xff83e85a),
            minimumSize: const Size.fromHeight(50),
          ),

          onPressed: (){}, child: Text("PAY"))
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

   showAlertCapitalDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("BACK"),
    onPressed: () {
      Navigator.pop(context);
     },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Select Deposit"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          DropdownButtonFormField(
            
                
              // Initial Value
              value: dropdownCapitalValue,
                
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),    
                
              // Array list of items
              items: capitalItems.map((String items) {
                return DropdownMenuItem(
                  
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Amount"
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
             backgroundColor: Color(0xff83e85a),
            minimumSize: const Size.fromHeight(50),
          ),

          onPressed: (){}, child: Text("PAY"))
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

   showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("BACK"),
    onPressed: () {
      Navigator.pop(context);
     },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Select Account"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          DropdownButtonFormField(
            
                
              // Initial Value
              value: dropdownvalue,
                
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),    
                
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Amount"
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
             backgroundColor: Color(0xff83e85a),
            minimumSize: const Size.fromHeight(50),
          ),

          onPressed: (){}, child: Text("PAY"))
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
      appBar: AppBar(title: Text("Deposit Cash Via MPESA"),
      
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:8.0, left: 15),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
             showAlertDialog(context);
              },
              child: Text("Mpesa To FOSA")),
              GestureDetector(
              onTap: (){
             showAlertCapitalDialog(context);
              },
              child: Text("Mpesa To BOSA")),
              GestureDetector(
              onTap: (){
             showAlertLoansDialog(context);
              },
              child: Text("Mpesa To LOAN")),
              GestureDetector(
              onTap: (){
             showAlertOtherDialog(context);
              },
              child: Text("Mpesa To Other")),
      
          ],
        ),
      ),
    );
    
  }
}