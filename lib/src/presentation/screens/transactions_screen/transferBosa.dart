import 'package:flutter/material.dart';

class TransferBosaScreen extends StatefulWidget {
  const TransferBosaScreen({super.key});

  @override
  State<TransferBosaScreen> createState() => _TransferBosaScreenState();
}

class _TransferBosaScreenState extends State<TransferBosaScreen> {
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
      title: Text("To BOSA Account"),
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
           DropdownButtonFormField(
              
                  
                // Initial Value
                value: otherInitialValue,
                  
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),    
                  
                // Array list of items
                items: otherAccounts.map((String items) {
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
              TextFormField(decoration: InputDecoration(
                hintText: 'Amount',
    
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
