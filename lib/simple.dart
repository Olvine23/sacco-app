import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/pages/cat_list.dart';
import 'package:state/providers/catprovider.dart';

class DemoState extends StatelessWidget {
  const DemoState({super.key});

  @override
  Widget build(BuildContext context) {
    final providerCat = Provider.of<CatProvider>(context);
    var cats = context.watch<CatProvider>().favCats;
    var catList = context.watch<CatProvider>().catList;
    print(cats.length);
    print(catList.length);

    return Scaffold(
      appBar: AppBar(
        title: Text("My cats"),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CatListPage();
                }));
              },
              icon: Icon(Icons.golf_course),
              label: Text("View list")),
          Expanded(
            child: ListView.builder(
                itemCount: cats.length,
                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                          trailing: IconButton(
                              onPressed: () {
                                if (!catList.contains(cats[index])) {
                                  context
                                      .read<CatProvider>()
                                      .addToList(cats[index]);
                                } else {
                                  context
                                      .read<CatProvider>()
                                      .removeFromList(cats[index]);
                                  final snackbar = SnackBar(
                                      content: Text(
                                          "Removed ${cats[index].name} from list"));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackbar);
                                }
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: catList.contains(cats[index])
                                    ? Colors.red
                                    : Colors.white,
                              )),
                          title: Text(cats[index].name)));
                }),
          ),
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Center(child: Text("I only appear in one widget ${providerCat.name}")),
      //      ElevatedButton(onPressed: (){

      //       providerCat.name = 'Lior';
      //     }, child: Text('update cat name',))
      //   ],
      // ),
    );
  }
}
