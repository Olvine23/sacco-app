import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  var initialValue= 'Account 1';
  var fromAccounts = [    
    'Account 1',
    'Account 2',
    'Other Account',
     
  ];

   var otherAccounts = [    
    'Account 1',
    'Account 2',
    'Other Account',
     
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Between My Accounts"),
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
                value: initialValue,
                  
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
