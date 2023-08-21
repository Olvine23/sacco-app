import 'package:flutter/material.dart';
import 'package:state/src/presentation/screens/transactions_screen/deposit.dart';
import 'package:state/src/presentation/statistics_screen.dart';
import 'package:state/src/presentation/widgets/buttonCell.dart';
import 'package:state/src/presentation/widgets/cardWithImage.dart';

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
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
                    GestureDetector(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context){

                            return DepositScreen();

                          }));
                      },
                      child: CircleAvatar(
                        
                          radius: 20,
                          backgroundColor: Color(0xff3D6ADA),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonCell(
                      onTap: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return StatisticsScreen();
                        }));

                      },
                      text: 'Statistics',
                      icon: Icons.bar_chart,
                    ),
                    ButtonCell(
                      text: 'Statement',
                      icon: Icons.reorder,
                    ),
                    ButtonCell(
                      text: 'Payment',
                      icon: Icons.money,
                    ),
                    ButtonCell(
                        onTap: (){
                         
                        },
                        text: 'Transact',
                        icon: Icons.compare_arrows_outlined),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                    subtitle: Text(
                      "Your expense today: \$333,",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black54),
                    ),
                    title: Text(
                      "Financial Management",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.chevron_right)),
                    Text("Explore"),
                SizedBox(
                  height: 150,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    CardWithImage(customText: 'Access to up to 5 times of your deposit with flexible payment period.',),
                    CardWithImage(customText: 'Get 50% of your dividence earned this year',),
                    CardWithImage(customText: 'Get 50% of your dividence earned this year',),
                    CardWithImage(customText: 'Get 50% of your dividence earned this year',)
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Expenditure",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Today",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 18,
                      ),
                      Text("\$122229290",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3D6ADA))),
                    ],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2021/01/19/09/58/woman-5930691_1280.jpg'),
                      radius: 20,
                      backgroundColor: Colors.amber),
                  title: Text("Cafes and restaurant"),
                  subtitle: Text("\$25.9 monthly target"),
                  trailing: Text("-\$30",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3D6ADA))),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2021/01/19/09/58/woman-5930691_1280.jpg'),
                      radius: 20,
                      backgroundColor: Colors.amber),
                  title: Text("Cafes and restaurant"),
                  subtitle: Text("\$25.9 monthly target"),
                  trailing: Text("-\$30",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3D6ADA))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
