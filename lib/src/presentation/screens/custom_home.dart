import 'package:flutter/material.dart';

class CustomHome extends StatelessWidget {
  const CustomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            child: Column(
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
                        SizedBox(width: 8,),
                        Icon(Icons.menu)
                      ],
                    )
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
