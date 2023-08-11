import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/providers/catprovider.dart';

class CatListPage extends StatelessWidget {
  const CatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var cats = context.watch<CatProvider>().catList;
    print(cats.length);
    return  Scaffold(
      body: ListView.builder(
        itemCount: cats.length ,
        itemBuilder: (context, index){
          return Text(cats[index].name);

        }),
    );
  }
}