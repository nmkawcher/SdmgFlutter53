import 'package:flutter/material.dart';
import 'package:sdmgflutter53/route_example/second_page.dart';

class FirstPage extends StatelessWidget {
//  static final String routesName='/first_page';
  static final String routesName='/first_page';
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: (){
           // Navigator.pushNamed(context, SecondPage.routesName);
            Navigator.pushNamed(context, SecondPage.routesName,arguments: "name");
           /* Navigator.push(context,
            MaterialPageRoute(builder: (ctx)=>SecondPage()),
            );*/
          },
          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}
