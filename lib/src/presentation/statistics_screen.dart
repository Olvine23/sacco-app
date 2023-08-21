import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:state/src/presentation/screens/qr/barData.dart';

class StatisticsScreen extends StatefulWidget {
  StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  String dropdownValue = "Year";

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text(
            "2023",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          value: "2023"),
      DropdownMenuItem(child: Text("2022"), value: "2022"),
      DropdownMenuItem(child: Text("2021"), value: "2021"),
      DropdownMenuItem(child: Text("Older"), value: "Older"),
    ];
    return menuItems;
  }

  String selectedValue = "2023";
  var items = ["2023", "2022", "2021", "2020", "Older "];

  List<double> weeklySummary = [50.0, 90.0, 40.0, 77.0, 100.0, 65.0, 19.8];

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      sunAmnt: weeklySummary[0],
      monAmnt: weeklySummary[1],
      tueAmnt: weeklySummary[2],
      wedAmnt: weeklySummary[3],
      thuAmnt: weeklySummary[4],
      friAmnt: weeklySummary[5],
      satAmnt: weeklySummary[6],
    );

    myBarData.initializeBarData();

    

    return Scaffold(
        appBar: AppBar(
          title: Text("Statistics"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      color: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 20),
                        child: Column(
                          children: [
                            Text("Earnings",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("\$1414414",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              "Expenditure",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("\$1414414",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, left: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Earnings",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Expenditure",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      DropdownButton(
                          icon: const Icon(Icons.keyboard_arrow_down),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          value: selectedValue,
                          items: dropdownItems)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 250,
                  child: BarChart(BarChartData(
                      minY: 0,
                      maxY: 200,
                      gridData: FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(
                        show: true,
                        topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        bottomTitles:  AxisTitles(
                          sideTitles: SideTitles(
                            getTitlesWidget: getBottomTiles,
                            showTitles: true
                          )
                        )
                      ),
                      barGroups: myBarData.barData
                          .map((data) => BarChartGroupData(x: data.x, barRods: [
                                BarChartRodData(
                                    toY: data.y,
                                    color: Colors.red,
                                    width: 25,
                                    borderRadius: BorderRadius.circular(4),
                                    backDrawRodData: BackgroundBarChartRodData(
                                        show: true,
                                        color: Colors.blue,
                                        toY: 200))
                              ]))
                          .toList())),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Transactions",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("View all",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3D6ADA))),
                          Icon(Icons.arrow_forward, color: Color(0xff3D6ADA))
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2016/10/09/19/19/coins-1726618_1280.jpg'),
                          radius: 20,
                          backgroundColor: Colors.amber),
                      title: Text(
                        "Share Capital",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text("Ksh. 100084",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3D6ADA))),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2021/01/19/09/58/woman-5930691_1280.jpg'),
                          radius: 20,
                          backgroundColor: Colors.amber),
                      title: Text(
                        "Deposit Contribution",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text("Ksh. 100084",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3D6ADA))),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2021/01/19/09/58/woman-5930691_1280.jpg'),
                          radius: 20,
                          backgroundColor: Colors.amber),
                      title: Text(
                        "Insurance Contribution",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text("Ksh. 100084",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3D6ADA))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
        
  }
}

Widget getBottomTiles(double value, TitleMeta meta) {
  const style = TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14);

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text(
        'Sun',
        style: style,
      );
      break;
    case 1:
      text = const Text(
        'Mon',
        style: style,
      );
      break;
    case 2:
      text = const Text(
        'Tue',
        style: style,
      );
      break;
    case 3:
      text = const Text(
        'Wed',
        style: style,
      );
      break;

    case 4:
      text = const Text(
        'Thu',
        style: style,
      );
      break;
    case 5:
      text = const Text(
        'Fri',
        style: style,
      );
      break;

    case 6:
      text = const Text(
        'Sat',
        style: style,
      );

      break;
    default:
       text = Text('', style: style,);
      
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}
