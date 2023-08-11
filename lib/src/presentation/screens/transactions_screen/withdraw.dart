import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  var initialValue= 'Account 1';
  var accounts = [    
    'Account 1',
    'Account 2',
    'Other Account',
     
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Withdraw Cash"),
    ),
    body: Padding(
      padding: const EdgeInsets.only(left:12.0, right:15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    
          Text("Source"),
           DropdownButtonFormField(
              
                  
                // Initial Value
                value: initialValue,
                  
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),    
                  
                // Array list of items
                items: accounts.map((String items) {
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
    
            onPressed: (){}, child: Text("WITHDRAW"))
              
    
    
    
    
        ],
      ),
    ),
    
    );
  }
}
