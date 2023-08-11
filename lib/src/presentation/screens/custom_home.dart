import 'package:flutter/material.dart';
import 'package:state/src/presentation/widgets/buttonCell.dart';

class CustomHome extends StatelessWidget {
  const CustomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Hello user",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.notifications),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.menu)
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Current Balance",
                    style: TextStyle(fontSize: 12, color: Color(0xff3D6ADA)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$122229290",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff3D6ADA),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonCell(
                      text: 'Qr code',
                      icon: Icons.qr_code_2_rounded,
                    ),
                    ButtonCell(
                      text: 'Bank',
                      icon: Icons.wallet,
                    ),
                    ButtonCell(
                      text: 'Payment',
                      icon: Icons.money,
                    ),
                    ButtonCell(
                        text: 'Send Money', icon: Icons.compare_arrows_outlined),
                
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  subtitle:Text("Your expense today: \$333,", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),) ,
                  title: Text("Financial Management", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                  ,trailing: Icon(Icons.chevron_right)
                  ),
                  
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
