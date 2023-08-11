import 'package:flutter/material.dart';

class TransferFosaScreen extends StatefulWidget {
  const TransferFosaScreen({super.key});

  @override
  State<TransferFosaScreen> createState() => _TransferFosaScreenState();
}

class _TransferFosaScreenState extends State<TransferFosaScreen> {
  var initialValue= 'Loan 1';
  var otherInitialValue= 'Current Shares';
  var fromAccounts = [    
    'Loan 1',
    'Loan 2',
    'Other Account',
     
  ];

   var otherAccounts = [    
    'Current Shares',
    'Shares Retained',
    'Benevolent Fund',
     
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("To FOSA Account"),
    ),
    body: Padding(
      padding: const EdgeInsets.only(left:12.0, right:15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    
          Text("From"),
           DropdownButtonFormField(
              
                  
                // Initial Value
                value: initialValue,
                  
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),    
                  
                // Array list of items
                items: fromAccounts.map((String items) {
                  return DropdownMenuItem(
                    
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) { 
                  setState(() {
                   initialValue = newValue!;
                  });
                },
              ),
               SizedBox(height: 10),
               Text("To"),
            TextFormField(decoration: InputDecoration(
                hintText: 'Enter Account Number',
    
              ),),
               SizedBox(height: 10),
              TextFormField(decoration: InputDecoration(
                hintText: 'Enter Amount',
    
              ),),
               SizedBox(height: 20),
               ElevatedButton(
            style: ElevatedButton.styleFrom(
               backgroundColor: Color(0xff83e85a),
              minimumSize: const Size.fromHeight(50),
            ),
    
            onPressed: (){}, child: Text("TRANSFER"))
              
    
    
    
    
        ],
      ),
    ),
    
    );
  }
}
