import 'package:flutter/material.dart';
import 'package:sdmgflutter53/route_example/third_page.dart';

class SecondPage extends StatelessWidget {
//  static final String routesName='/second_page';
static final String routesName='/second_page';
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
            SizedBox(height: 20,),
            OutlinedButton(
              onPressed: (){
                Navigator.pushNamed(context,ThirdPage.routesName);
              },
              child: Text("Go to Third Page"),
            ),

          ],
        ),
      ),
    );
  }
}
