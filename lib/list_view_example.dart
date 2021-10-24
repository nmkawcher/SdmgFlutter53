import 'package:flutter/material.dart';

class LisViewExample extends StatelessWidget {
  const LisViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          myContainer(),
          Divider(color: Colors.black,height: 5,),
          myContainer(),
          Divider(color: Colors.black,height: 5,),
          myContainer(),
          Divider(color: Colors.black,height: 5,),
        myContainer(),
          Divider(),
          Divider(color: Colors.black,height: 5,),
          myContainer(),
          Divider(color: Colors.black,height: 5,),

        ],
      ),
    );
  }
}
 Widget myContainer(){
  return Container(
    width: double.infinity,
    height: 100,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.purple
    ),


  );
 }


/*class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        children: [
          getContainer(),
          Divider(),
          getContainer(),
          Divider(),
          getContainer(),
          Divider(),
          getContainer(),
          Divider(),
          getContainer(),
          Divider(),
          getContainer(),
          Divider(),
          
        ],
      ),
    );

   
  }
}

Widget getContainer(){
  return Container(
    padding: EdgeInsets.all(15),
    child: Column(
      children: [
        Text(
          "Followers",
          style: TextStyle(fontSize: 18),
        ),
        Text(
          "300",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        )
      ],
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.green),
  );
}*/
