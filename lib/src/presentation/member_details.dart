import 'package:flutter/material.dart';

class MemberDetailsScreen extends StatefulWidget {
  const MemberDetailsScreen({super.key});

  @override
  State<MemberDetailsScreen> createState() => _MemberDetailsScreenState();
}

class _MemberDetailsScreenState extends State<MemberDetailsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'My Profile'),
            Tab(text: 'My Accounts'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MyProfileTab(),
          MyAccountsTab(),
        ],
      ),
    );
  }
}

class MyProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png'),
          ),
          SizedBox(height: 20),
          Text(
            'John Doe',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),

          Text(
            'Digipesa',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Member Number',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text("00084", style: TextStyle(fontSize: 16),),
                    SizedBox(height: 20,),
                    Text(
                    'ID Number',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text("577049", style: TextStyle(fontSize: 16),),
                    SizedBox(height: 20,),
                    Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text("+254715283787", style: TextStyle(fontSize: 16),)
                ],
              ),
            ),
          )
          // SizedBox(height: 10),
          // Text('Member Number: 123456'),
          // SizedBox(height: 10),
          // Text('Phone Number: +1 123-456-7890'),
        ],
      ),
    );
  }
}

class MyAccountsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text(
                      'Share Capital',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text("Ksh. 100084", style: TextStyle(fontSize: 16),),
                      SizedBox(height: 20,),
                      Text(
                      'Deposit Contribution',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text("Ksh. 577049", style: TextStyle(fontSize: 16),),
                      SizedBox(height: 20,),
                      Text(
                      'Insurance Contribution',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text("Ksh. 103787", style: TextStyle(fontSize: 16),)
        ],
      ),
    );
  }
}
