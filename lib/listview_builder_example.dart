import 'package:flutter/material.dart';
import 'package:sdmgflutter53/list_view_example.dart';

class MyListViewBuilder extends StatelessWidget {
  final List dummyList=List.generate(100, (index) =>{ "id":index,"title":"this is title$index","subTitle":"this is subtitle $index"});
   MyListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
          itemBuilder:(context, index) => Card(
            margin: EdgeInsets.all(5),
            elevation: 12,
            color: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: myContainer()/*ListTile(
              leading: CircleAvatar(
                child: Text(dummyList[index]["id"].toString()),
                backgroundColor: Colors.green,
              ),
              title: Text(dummyList[index]["title"],style: TextStyle(
                color: Colors.white
              ),),
              subtitle: Text(dummyList[index]["subTitle"],style: TextStyle(
                  color: Colors.white
              ),),

            )*/,
          ),
      ),
    );
  }
}
